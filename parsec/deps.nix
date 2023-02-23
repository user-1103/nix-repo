{ inputs }:
let
  _pkgs = (import inputs.nixpkgs) {
    config = { allowUnfree = true; };
    localSystem = "x86_64-linux";
  };
in
{
  lib = _pkgs.lib;
  pkgs = _pkgs;
} // (with _pkgs; {
  inherit stdenv writeScript buildFHSUserEnv;
  inherit copyDesktopItems dpkg curl makeDesktopItem jq;
})
