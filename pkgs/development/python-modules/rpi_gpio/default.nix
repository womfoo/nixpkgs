{ stdenv
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  pname = "RPi.GPIO";
  version = "0.7.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0gvxp0nfm2ph89f2j2zjv9vl10m0hy0w2rpn617pcrjl41nbq93l";
  };

  propagatedBuildInputs = [ ];

  meta = with stdenv.lib; {
    description = "A module to control Raspberry Pi GPIO channels";
    homepage = https://sourceforge.net/projects/raspberry-gpio-python/;
    license = licenses.mit;
  };

}