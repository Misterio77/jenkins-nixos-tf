{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.services.jenkins;
  format = pkgs.formats.yaml {};
  jcascFile = format.generate "config.yml" cfg.settings;
in {
  options.services.jenkins.settings = lib.mkOption {
    type = format.type;
    default = {};
  };

  config = lib.mkIf (cfg.settings != {}) {
    assertions = [
      {
        assertion = cfg.plugins ? configuration-as-code;
        message = "You must add the 'configuration-as-code' plugin to use services.jenkins.settings.";
      }
    ];
    services.jenkins = {
      environment.CASC_JENKINS_CONFIG = toString jcascFile;
      extraJavaOptions = [
        "-Djenkins.install.runSetupWizard=false"
      ];
    };
  };
}
