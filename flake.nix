{
  description = "A flake containing all the things I (1103)  have packaged for my own use.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = inputs@{ self, nixpkgs }: {

    packages.x86_64-linux = rec {
      parsec = (import ./parsec) {inherit inputs;};
      pond = (import ./pond) {inherit inputs;};
    };

  };
}
