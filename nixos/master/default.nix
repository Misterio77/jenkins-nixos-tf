{
  pkgs,
  config,
  terraformArgs,
  ...
}: let
  toYAML = content: toString ((pkgs.formats.yaml {}).generate "config.yaml" content);
in {
  imports = [../common];

  services.jenkins = {
    enable = true;
    extraJavaOptions = [
      "-Djenkins.install.runSetupWizard=false"
    ];
    environment = {
      CASC_JENKINS_CONFIG = toYAML {
        # TODO
      };
    };
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
