{inputs}:
let
    pkgs = import inputs.nixpkgs {localSystem = "x86_64-linux";};
in
pkgs.stdenv.mkDerivation {
    pname = "pond";
    version = "1.0";
    src = pkgs.fetchgit {
        url = "https://gitlab.com/alice-lefebvre/pond";
        rev = "845c290d58cd9edbc964570bcd6aaf3ba320fbf3";
        hash = "sha256-xG2dQ0hzQMNGV2NreLzXQWeDE5QJc0j6A5JBXmSMavk=";

    };
    buildInputs = [pkgs.ncurses];
    buildPhase = ''
        mkdir -p bin
        gcc -std=gnu99 -Wall -Os pond.c -lncurses -o bin/pond
    '';
    installPhase = ''
        mkdir -p $out/bin
        cp bin/pond $out/bin/pond
    '';
}
