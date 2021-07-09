{ stdenv, fetchurl, pam, libkrb5, cyrus_sasl, miniupnpc }:
let
  libc = if stdenv.hostPlatform.system == "i686-linux" then "${stdenv.glibc.out}/lib/libc.so.6"
  else if stdenv.hostPlatform.system == "x86_64-linux" then "${stdenv.glibc.out}/lib/libc.so.6"
  else throw "libc${stdenv.targetPlatform.extensions.sharedLibrary}";
in
stdenv.mkDerivation rec {
  inherit libc;
  pname = "dante";
  version = "1.4.2";

  src = fetchurl {
    url = "https://www.inet.no/dante/files/${pname}-${version}.tar.gz";
    sha256 = "1bfafnm445afrmyxvvcl8ckq0p59yzykmr3y8qvryzrscd85g8ms";
  };

  buildInputs = [ pam libkrb5 cyrus_sasl miniupnpc ];

  configureFlags = if !stdenv.isDarwin
    then [ "--with-libc=libc.so.6" ]
    else [ "--with-libc=libc${stdenv.targetPlatform.extensions.sharedLibrary}" ];

  dontAddDisableDepTrack = stdenv.isDarwin;

  meta = with stdenv.lib; {
    description = "A circuit-level SOCKS client/server that can be used to provide convenient and secure network connectivity.";
    homepage    = "https://www.inet.no/dante/";
    maintainers = [ maintainers.arobyn ];
    license     = licenses.bsdOriginal;
    platforms   = platforms.linux ++ platforms.darwin;
  };
}
