{terraformArgs, ...}: {
  imports = [
    ./hardware.nix
    ./jenkins-declarative.nix
  ];

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "yes";
      PasswordAuthentication = false;
    };
  };

  users.users.root = {
    openssh.authorizedKeys.keys = terraformArgs.authorizedKeys or [];
  };

  services.nginx.enable = true;
  networking.firewall.allowedTCPPorts = [80 443];

  security.acme = {
    defaults.email = "acme@m7.rs";
    acceptTerms = true;
  };

  virtualisation.vmVariant = {
    virtualisation = {
      graphics = false;
      forwardPorts = [
        {
          host.port = 8443;
          guest.port = 443;
        }
        {
          host.port = 8080;
          guest.port = 80;
        }
      ];
    };
    services.getty.autologinUser = "root";
  };
}
