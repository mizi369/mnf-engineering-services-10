{ pkgs }: {
  deps = [
    pkgs.nodejs_20
    pkgs.nodePackages.typescript-language-server
    pkgs.nodePackages.npm
    # Dependencies needed for Puppeteer (WhatsApp Web)
    pkgs.chromium
    pkgs.glib
    pkgs.nss
    pkgs.nspr
    pkgs.atk
    pkgs.cups
    pkgs.dbus
    pkgs.libdrm
    pkgs.expat
    pkgs.libX11
    pkgs.libXcomposite
    pkgs.libXdamage
    pkgs.libXext
    pkgs.libXfixes
    pkgs.libXrandr
    pkgs.libgbm
    pkgs.pango
    pkgs.cairo
    pkgs.asoundjs
    pkgs.alsa-lib
    pkgs.mesa
  ];
}
