{
  pkgs,
  config,
  terraformArgs,
  ...
}: {
  imports = [../common];

  services.jenkins = {
    enable = true;
    settings = {
      jenkins = {
        securityRealm.local = {
          allowsSingup = false;
          users = [
            {
              id = "gabriel";
              password = "\${file:/var/lib/secrets/jenkins-gabriel-password}";
            }
          ];
        };
        authorizationStrategy.roleBased.roles.global = [
          {
            name = "admin";
            permissions = ["Overall/Administer"];
            entries = [
              {user = "gabriel";}
            ];
          }
          {
            name = "readonly";
            permissions = ["Overall/Read" "Job/Read"];
            entries = [
              {group = "authenticated";}
            ];
          }
        ];
      };
    };
    plugins = import ./jenkins-plugins.nix {inherit (pkgs) stdenv fetchurl;};
  };

  services.nginx.virtualHosts = {
    ${terraformArgs.jenkins_domain or "localhost"} = {
      default = true;
      forceSSL = true;
      enableACME = true;
      locations."/".proxyPass = "http://localhost:${toString config.services.jenkins.port}";
    };
  };
}
