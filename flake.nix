{
  description = "compose-kit";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
    in
    {
      devShells = nixpkgs.lib.genAttrs systems (
        system:
        import ./shell.nix {
          inherit system nixpkgs;
        }
      );
    };
}
