{inputs}:
{
  lib = inputs.nixpkgs.lib;
  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
} // (with inputs.nixpkgs.legacyPackages.x86_64-linux; {
  inherit stdenv writeScript buildFHSUserEnv;
  inherit copyDesktopItems dpkg curl makeDesktopItem jq;
})
