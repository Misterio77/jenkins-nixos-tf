{
  pkgs,
  config,
  terraformArgs,
  ...
}: {
  imports = [../common];

  services.jenkins = {
    enable = true;
    extraJavaOptions = [
      "-Djenkins.install.runSetupWizard=false"
    ];
    environment = {
      CASC_JENKINS_CONFIG = (pkgs.formats.yaml {}).generate "config.yaml" {
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
