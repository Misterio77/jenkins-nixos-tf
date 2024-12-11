{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    disko.url = "github:nix-community/disko/latest";
    disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {nixpkgs, ...} @ flakeInputs: {
    nixosConfigurations = {
      master = nixpkgs.lib.nixosSystem {
        modules = [
          ./nixos/master
        ];
        specialArgs = {
          inherit flakeInputs;
          terraformArgs = {};
        };
      };
      slave = nixpkgs.lib.nixosSystem {
        modules = [
          ./nixos/slave
        ];
        specialArgs = {
          inherit flakeInputs;
          terraformArgs = {};
        };
      };
    };
  };
}
