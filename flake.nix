{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    disko.url = "github:nix-community/disko/latest";
    disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {nixpkgs, ...} @ flakeInputs: rec {
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
    packages.x86_64-linux.default = nixosConfigurations.master.config.system.build.vm;
  };
}
