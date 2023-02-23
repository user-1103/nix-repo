{inputs}:
let
  _pkgs = (import inputs.nixpkgs) { config = { allowUnfree = true; }; };
in
{
  lib = _pkgs.lib;
  pkgs = _pkgs;
} // (with _pkgs; {
  inherit stdenv writeScript buildFHSUserEnv;
  inherit copyDesktopItems dpkg curl makeDesktopItem jq;
})
