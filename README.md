# USER 1103's Nix Repo

This repo is where I put all the things I have packaged in nix for my own
use. There are a few reasons why something might be here:

1. The package is not in nixpkgs / nur / a flake.
2. The package that is in the above sources is broken :(.
3. I need a custom config that isn't available via an override.
4. I wrote the software.

## Use

This package set is available as a [nix flake](https://nixos.wiki/wiki/Flakes).
Use the following in your inputs and your set.

```
inputs = {
    home-manager.url = "github:user-1103/nix-repo ";
  };
```

## Support

If you find a problem feel free to let me know about it, but I make no
guarantees that it will be fixed. Pull request are always welcome.

## License

Each software that is packaged has its own license, independent of my nix code.

You may use my code however you wish, so long as you have sent me a photo of a
pet (cat, dog, lizard, etc.) that you own via email or GitHub issue. 

You may not use my code in any capacity unless the above requirements are met.

If you do not own a pet, find one.


