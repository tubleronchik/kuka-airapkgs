{ stdenv, fetchurl, pkgconfig, postgresql, curl, openssl, zlib, libxml2, pcre, libiconv, net_snmp, libevent }:

let

  version = "3.4.12";

  src = fetchurl {
    url = "mirror://sourceforge/zabbix/zabbix-${version}.tar.gz";
    sha256 = "d7e55b2be8ea69921f18bc7f08bdd7d1b87c268513286f46286744bf4da729fe";
  };

  preConfigure =
    ''
      substituteInPlace ./configure \
        --replace " -static" "" \
        ${stdenv.lib.optionalString (stdenv.cc.libc != null) ''
          --replace /usr/include/iconv.h ${stdenv.lib.getDev stdenv.cc.libc}/include/iconv.h
        ''}
    '';

in

{

  server = stdenv.mkDerivation {
    name = "zabbix-${version}";

    inherit src preConfigure;

    configureFlags = [
      "--enable-agent"
      "--enable-server"
      "--with-postgresql"
      "--with-libcurl"
      "--enable-ipv6"
      "--with-net-snmp"
      "--with-libxml2"
      "--with-libpcre=${pcre.dev}"
      "--with-iconv=${libiconv}"
      "--with-libevent=${libevent}"
      "--enable-ipv6"
    ];

  nativeBuildInputs = [ pkgconfig ];
    buildInputs = [ postgresql curl openssl zlib libxml2 pcre libiconv net_snmp libevent];

    postInstall =
      ''
        mkdir -p $out/share/zabbix
        cp -prvd frontends/php $out/share/zabbix/php
        mkdir -p $out/share/zabbix/db/data
        cp -prvd database/postgresql/data.sql $out/share/zabbix/db/data/data.sql
        cp -prvd database/postgresql/images.sql $out/share/zabbix/db/data/images_pgsql.sql
        mkdir -p $out/share/zabbix/db/schema
        cp -prvd database/postgresql/schema.sql $out/share/zabbix/db/schema/postgresql.sql
      '';

    meta = {
      description = "An enterprise-class open source distributed monitoring solution";
      homepage = https://www.zabbix.com/;
      license = "GPL";
      maintainers = [ stdenv.lib.maintainers.eelco ];
      platforms = stdenv.lib.platforms.linux;
    };
  };

  agent = stdenv.mkDerivation {
    name = "zabbix-agent-${version}";

    inherit src preConfigure;

    configureFlags = [
      "--enable-agent"
      "--with-libpcre=${pcre.dev}"
      "--with-iconv=${libiconv}"
      "--enable-ipv6"
    ];

    buildInputs = [ pcre libiconv ];

    meta = with stdenv.lib; {
      description = "An enterprise-class open source distributed monitoring solution (client-side agent)";
      homepage = https://www.zabbix.com/;
      license = licenses.gpl2;
      maintainers = [ maintainers.eelco ];
      platforms = platforms.linux;
    };
  };
}
