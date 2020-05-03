{ stdenv
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  pname = "spidev";
  version = "3.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "104y2w76nlhinxxyg5z10skah4rki5c7ac3zj0y2759xawpya523";
  };

  propagatedBuildInputs = [ ];

  meta = with stdenv.lib; {
    description = "Python bindings for Linux SPI access through spidev";
    homepage = https://github.com/doceme/py-spidev;
    license = licenses.mit;
  };

}