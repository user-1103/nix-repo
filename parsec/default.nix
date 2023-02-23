{inputs}:
  let
    pkgDeps = (import ./deps.nix) {inherit inputs;};
  in
    import ./pkg.nix {inherit inputs pkgDeps;}
