{ lib, fetchFromGitHub, python3Packages
}:

python3Packages.buildPythonPackage rec {
  pname = "papertty";
  version = "0.03";

  src = fetchFromGitHub {
    owner  = "joukos";
    repo   = "PaperTTY"; 
    rev    = "v${version}_unoptimized";
    sha256 = "0gk2l8n3xbm9b3sav6dhanb4wq63z815974r0ssdb82c1cf6ajq8";
  };

  # propagatedBuildInputs = [ pygtk numpy ];

  # outputs = [ "out" "man" ];

  # postInstall = ''
  #   mkdir -p $man/share/man/man1
  #   cp man/escrotum.1 $man/share/man/man1/
  # '';

  meta = with lib; {
    homepage = https://github.com/Roger/escrotum;
    description = "Linux screen capture using pygtk, inspired by scrot";
    platforms = platforms.linux;
    maintainers = with maintainers; [ rasendubi ];
    license = licenses.gpl3;
  };
}