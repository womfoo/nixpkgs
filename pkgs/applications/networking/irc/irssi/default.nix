{ stdenv, fetchurl, pkgconfig, ncurses, glib, openssl, perl, libintl }:

stdenv.mkDerivation rec {
  version = "1.2.0";
  name = "irssi-${version}";

  src = fetchurl {
    url = "https://github.com/irssi/irssi/releases/download/${version}/${name}.tar.gz";
    sha256 = "1sp3fc5fkdx0mmllvag94xaifnqbj1k09nl235pix26vv1gzq39m";
  };

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ ncurses glib openssl perl libintl ];

  configureFlags = [
    "--with-proxy"
    "--with-bot"
    "--with-perl=yes"
    "--enable-true-color"
  ];

  meta = {
    homepage    = https://irssi.org;
    description = "A terminal based IRC client";
    platforms   = stdenv.lib.platforms.unix;
    maintainers = with stdenv.lib.maintainers; [ lovek323 ];
    license     = stdenv.lib.licenses.gpl2Plus;
  };
}
