{inputs}:
let
    pkgs = import inputs.nixpkgs {localSystem = "x86_64-linux";};
in
pkgs.stdenv.mkDerivation {
    pname = "pond";
    version = "1.0";
    src = fetchGit {
        url = "https://gitlab.com/alice-lefebvre/pond";
        ref = "845c290d58cd9edbc964570bcd6aaf3ba320fbf3";
    };
    buildInputs = [pkgs.ncurses];
    buildPhase = ''
        preBuild
        mkdir -p bin
        gcc -std=gnu99 -Wall -Os pond.c -lcurses -o bin/pond
        postBuild
    '';
    installPhase = ''
        preInstall
        cp bin/pond $out/usr/games/pond
        postInstall
    '';
}
