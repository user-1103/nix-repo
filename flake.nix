{
  description = "A flake containing all the things I (1103)  have packaged for my own use.";

  outputs = inputs@{ self, nixpkgs }: {

    packages.x86_64-linux = rec {
      parsec = (import ./parsec) {inherit inputs;};
      default = parsec;
    };

  };
}
