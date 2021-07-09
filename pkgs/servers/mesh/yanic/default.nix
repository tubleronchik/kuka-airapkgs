{ stdenv
, buildGoPackage
, fetchgit
}:

buildGoPackage rec {
  name = "yanic-${version}";
  version = "2018-07-10";
  rev = "71c3e5ffe4d1fb09736edf7d469c892f6eb8e99f";

  goPackagePath = "github.com/FreifunkBremen/yanic";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/FreifunkBremen/yanic";
    sha256 = "0j1lqzj94ii4qjby7a42q9vpf1cc6h05qpmdy7kcsrgn5b8vknjh";
  };

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    homepage = https://github.com/FreifunkBremen/yanic;
    description = "Yet another node info collector - for respondd to be used with meshviewer";
    license = licenses.agpl3;
    maintainers = [ maintainers.akru ];
    platforms = platforms.linux;
  };
}
