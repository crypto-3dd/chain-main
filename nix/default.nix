{ sources ? import ./sources.nix, system ? builtins.currentSystem }:
import sources.nixpkgs {
  overlays = [
    (_: pkgs: { inherit sources; })
    (_: pkgs: {
      cosmovisor = pkgs.buildGoModule rec {
        name = "cosmovisor";
        src = pkgs.sources.cosmos-sdk;
        subPackages = [ "./cmd/cosmovisor" ];
        sourceRoot = "cosmos-sdk-src/cosmovisor";
        vendorSha256 = sha256:1mv0id290b4h8wrzq5z5n1bsq5im8glhlb8c5j7lrky30mikzwik;
        doCheck = false;
      };
      relayer = pkgs.buildGoModule rec {
        name = "relayer";
        src = pkgs.sources.relayer;
        subPackages = [ "." ];
        vendorSha256 = sha256:0422zjarm6fk2ca7jfvzf3yz1n7i4zlk65blk34cmqr3m3dmfqw5;
        doCheck = false;
      };
    })
    (_: pkgs: {
      poetry2nix = import pkgs.sources.poetry2nix { inherit (pkgs) pkgs poetry; };
    })
  ];
  config = { };
  inherit system;
}
