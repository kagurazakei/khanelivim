{
  lib,
  pkgs,
  self ? null,
  inputs ? { },
}:

# Simply import the ./flake folder and expose packages/default & devShell
let
  khanelivim = import ./flake {
    inherit
      lib
      pkgs
      self
      inputs
      ;
  };
in
{
  packages = {
    default = khanelivim.packages.default;
  };
  devShell = khanelivim.partitionedAttrs.devShells;
}
