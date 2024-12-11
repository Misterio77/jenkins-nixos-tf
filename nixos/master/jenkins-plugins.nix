{ stdenv, fetchurl }:
  let
    mkJenkinsPlugin = { name, src }:
      stdenv.mkDerivation {
        inherit name src;
        phases = "installPhase";
        installPhase = "cp \$src \$out";
        };
  in {
    antisamy-markup-formatter = mkJenkinsPlugin {
      name = "antisamy-markup-formatter";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/antisamy-markup-formatter/162.v0e6ec0fcfcf6/antisamy-markup-formatter.hpi";
        sha256 = "3d4144a78b14ccc4a8f370ccea82c93bd56fadd900b2db4ebf7f77ce2979efd6";
        };
      };
    apache-httpcomponents-client-4-api = mkJenkinsPlugin {
      name = "apache-httpcomponents-client-4-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/apache-httpcomponents-client-4-api/4.5.14-208.v438351942757/apache-httpcomponents-client-4-api.hpi";
        sha256 = "9ed0ccda20a0ea11e2ba5be299f03b30692dd5a2f9fdc7853714507fda8acd0f";
        };
      };
    asm-api = mkJenkinsPlugin {
      name = "asm-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/asm-api/9.7.1-97.v4cc844130d97/asm-api.hpi";
        sha256 = "7f26c33883ea995b90a6e5c0f60cd1b4af0f863380ea42f7da4518960e04c393";
        };
      };
    bootstrap5-api = mkJenkinsPlugin {
      name = "bootstrap5-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/bootstrap5-api/5.3.3-1/bootstrap5-api.hpi";
        sha256 = "e0d0f7c92dae2f7977c28ceb6a5b2562b7012d1704888bff3bc176abda0cb269";
        };
      };
    bouncycastle-api = mkJenkinsPlugin {
      name = "bouncycastle-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/bouncycastle-api/2.30.1.78.1-248.ve27176eb_46cb_/bouncycastle-api.hpi";
        sha256 = "052c437528458806a9464d59a577142dc5c8848e306b19cba865e027d1ad2031";
        };
      };
    branch-api = mkJenkinsPlugin {
      name = "branch-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/branch-api/2.1200.v4b_a_3da_2eb_db_4/branch-api.hpi";
        sha256 = "1a16e0be15dce5829b385ec0eaff471b9e85c153451cbd35b49a014d9b040314";
        };
      };
    caffeine-api = mkJenkinsPlugin {
      name = "caffeine-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/caffeine-api/3.1.8-133.v17b_1ff2e0599/caffeine-api.hpi";
        sha256 = "a6c614655bc507345bf16b5c4615bb09b1a20f934c9bf0b15c02ccea4a5c0400";
        };
      };
    checks-api = mkJenkinsPlugin {
      name = "checks-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/checks-api/2.2.1/checks-api.hpi";
        sha256 = "2dc1e51c86e4b16c17e66a45d94ced9d0ee4a0b247df77a4a796bd3c93471b98";
        };
      };
    cloudbees-folder = mkJenkinsPlugin {
      name = "cloudbees-folder";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/cloudbees-folder/6.969.v7d22c6eb_fde1/cloudbees-folder.hpi";
        sha256 = "5acfff671bb1857e50d41939367247393b4dd0e692f66d6f4c7c5ada262bcbcd";
        };
      };
    command-launcher = mkJenkinsPlugin {
      name = "command-launcher";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/command-launcher/116.vd85919c54a_d6/command-launcher.hpi";
        sha256 = "1c615c184a70e3e2189dbaff0bf66f3cb027fa1e64396fc280e512071fba412b";
        };
      };
    commons-lang3-api = mkJenkinsPlugin {
      name = "commons-lang3-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/commons-lang3-api/3.17.0-84.vb_b_938040b_078/commons-lang3-api.hpi";
        sha256 = "90b15521b21ad1462b18a6f8894ff1a2c1080c5d398ca8bb928c062c992c3fc4";
        };
      };
    commons-text-api = mkJenkinsPlugin {
      name = "commons-text-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/commons-text-api/1.12.0-129.v99a_50df237f7/commons-text-api.hpi";
        sha256 = "2abe8a58c9a6a201121eda2494c2a5c7b5758536e61309b333ed72bdfba857c9";
        };
      };
    conditional-buildstep = mkJenkinsPlugin {
      name = "conditional-buildstep";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/conditional-buildstep/1.4.3/conditional-buildstep.hpi";
        sha256 = "d2ce40b86abc42372085ace0a6bb3785d14ae27f0824709dfc2a2b3891a9e8a8";
        };
      };
    config-file-provider = mkJenkinsPlugin {
      name = "config-file-provider";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/config-file-provider/980.v88956a_a_5d6a_d/config-file-provider.hpi";
        sha256 = "ef373230ab3d06da52250d9984cbc7f47a90dccbceb487557dbd28956762adf5";
        };
      };
    configuration-as-code = mkJenkinsPlugin {
      name = "configuration-as-code";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/configuration-as-code/1903.v004d55388f30/configuration-as-code.hpi";
        sha256 = "2eb44c20f74c23edd3ad0f78d7f01437266d1b487ee57c0841b578ca15d6dad6";
        };
      };
    credentials = mkJenkinsPlugin {
      name = "credentials";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/credentials/1393.v6017143c1763/credentials.hpi";
        sha256 = "92272d8bd0d309405587c0f8036c28204a4f88d2df8e35b5ea636feef5df05ef";
        };
      };
    credentials-binding = mkJenkinsPlugin {
      name = "credentials-binding";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/credentials-binding/687.v619cb_15e923f/credentials-binding.hpi";
        sha256 = "3a589c067bfc21e3792f2f60efa63a5a46ceedcb13af2b1ad4b1f631e4f37d0d";
        };
      };
    display-url-api = mkJenkinsPlugin {
      name = "display-url-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/display-url-api/2.209.v582ed814ff2f/display-url-api.hpi";
        sha256 = "413075f95bb93769708a5d4d660ca454f10005f10af26f5213f788e9750e6825";
        };
      };
    durable-task = mkJenkinsPlugin {
      name = "durable-task";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/durable-task/581.v299a_5609d767/durable-task.hpi";
        sha256 = "1ae83a72ef3ece1aebde350a704e025d8f7f035e1b102d0244c926a806fc916b";
        };
      };
    echarts-api = mkJenkinsPlugin {
      name = "echarts-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/echarts-api/5.5.1-4/echarts-api.hpi";
        sha256 = "cb81fb709565e7a2484da17cbda239f2a1a516b6edc338f72deee35086175fe4";
        };
      };
    eddsa-api = mkJenkinsPlugin {
      name = "eddsa-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/eddsa-api/0.3.0-4.v84c6f0f4969e/eddsa-api.hpi";
        sha256 = "ab56adb71f31e5627ac6751c393e8692916c1b82bf6b5f8399f9a88cfd8cb944";
        };
      };
    font-awesome-api = mkJenkinsPlugin {
      name = "font-awesome-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/font-awesome-api/6.6.0-2/font-awesome-api.hpi";
        sha256 = "6c0d5b6688372403f98c2ad63eb3269d3a04b2d4df511a6e38b20c1ca253b5b0";
        };
      };
    git = mkJenkinsPlugin {
      name = "git";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/git/5.6.0/git.hpi";
        sha256 = "345395d3abf4ca7c5bcbc99251ba5b6aede9756198104bf72f393346bd759bd0";
        };
      };
    git-client = mkJenkinsPlugin {
      name = "git-client";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/git-client/6.1.0/git-client.hpi";
        sha256 = "e855a000bede69c4c574bc57d48b1b2917c15a0ff219ae61b525586a2ac5f62a";
        };
      };
    github = mkJenkinsPlugin {
      name = "github";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/github/1.40.0/github.hpi";
        sha256 = "b3d165786deebd6f57d98f9f6f6dc74c11952d2969b2cd2e8aa5567e9bcadb2e";
        };
      };
    github-api = mkJenkinsPlugin {
      name = "github-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/github-api/1.321-478.vc9ce627ce001/github-api.hpi";
        sha256 = "eea82a4c0d7573757988523f2ebf96318815fd4b149d1d2a56d9c958376aa524";
        };
      };
    github-branch-source = mkJenkinsPlugin {
      name = "github-branch-source";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/github-branch-source/1807.v50351eb_7dd13/github-branch-source.hpi";
        sha256 = "ed6261af805eaca67fd3f482ca5f55b47edc955831359fbc9b3810c234e2c5ae";
        };
      };
    github-oauth = mkJenkinsPlugin {
      name = "github-oauth";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/github-oauth/621.v33b_4394dda_4d/github-oauth.hpi";
        sha256 = "76b72e1322c1987706c71f36fc34edfd0d7bfbfa58660c2cd5ed832992b67571";
        };
      };
    gson-api = mkJenkinsPlugin {
      name = "gson-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/gson-api/2.11.0-85.v1f4e87273c33/gson-api.hpi";
        sha256 = "74a3059af88301a7527458e57ab7b7a8ca91711cc02fe9c34fd41ca3133f5666";
        };
      };
    instance-identity = mkJenkinsPlugin {
      name = "instance-identity";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/instance-identity/201.vd2a_b_5a_468a_a_6/instance-identity.hpi";
        sha256 = "c43dc01e201fd37a38a6307dacc84ace60e1608f96623691e1dbe1fdc6d8a911";
        };
      };
    ionicons-api = mkJenkinsPlugin {
      name = "ionicons-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/ionicons-api/74.v93d5eb_813d5f/ionicons-api.hpi";
        sha256 = "681a9cc3083a089d52ef398206bfc521daabf3c682ef0a57be73e0feddc62e8f";
        };
      };
    jackson2-api = mkJenkinsPlugin {
      name = "jackson2-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jackson2-api/2.17.0-379.v02de8ec9f64c/jackson2-api.hpi";
        sha256 = "5e2d919724da0a47cd01bdb9f614c8fc90862c09ce506d9b2ca340252bad225e";
        };
      };
    jakarta-activation-api = mkJenkinsPlugin {
      name = "jakarta-activation-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jakarta-activation-api/2.1.3-1/jakarta-activation-api.hpi";
        sha256 = "ddc3df5d8c39a2a208661d69277120b1113373b04d06e2250615be2a65404b83";
        };
      };
    jakarta-mail-api = mkJenkinsPlugin {
      name = "jakarta-mail-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jakarta-mail-api/2.1.3-1/jakarta-mail-api.hpi";
        sha256 = "851ab22ff0647f4d82baab4e526c6d0ddb3e64ad4969c516116b374ef778e539";
        };
      };
    javadoc = mkJenkinsPlugin {
      name = "javadoc";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/javadoc/280.v050b_5c849f69/javadoc.hpi";
        sha256 = "3d0d37d90a939897109fa76b483f60087cc2fb192f9581d1432bd6ae569a2ad4";
        };
      };
    javax-activation-api = mkJenkinsPlugin {
      name = "javax-activation-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/javax-activation-api/1.2.0-7/javax-activation-api.hpi";
        sha256 = "c60ab7240dded219e2cd3002b30579dd993832c5d4683dca710f0f426776b063";
        };
      };
    jaxb = mkJenkinsPlugin {
      name = "jaxb";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jaxb/2.3.9-1/jaxb.hpi";
        sha256 = "8c9f7f98d996ade98b7a5dd0cd9d0aba661acea1b99a33f75778bacf39a64659";
        };
      };
    jjwt-api = mkJenkinsPlugin {
      name = "jjwt-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jjwt-api/0.11.5-112.ve82dfb_224b_a_d/jjwt-api.hpi";
        sha256 = "339161525489ce8ab23d252b9399eda3b849a22faa3542be5ae7c559f9936e47";
        };
      };
    job-dsl = mkJenkinsPlugin {
      name = "job-dsl";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/job-dsl/1.90/job-dsl.hpi";
        sha256 = "9bc754201687143fa7fde6a2713e112635ce444927a39eeb03962e7f7a456334";
        };
      };
    jquery3-api = mkJenkinsPlugin {
      name = "jquery3-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jquery3-api/3.7.1-2/jquery3-api.hpi";
        sha256 = "322d01e14a368e3131ff388dbc6fe062abaa6cb0a2bb761bc46516f1f7ca1066";
        };
      };
    jsch = mkJenkinsPlugin {
      name = "jsch";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/jsch/0.2.16-86.v42e010d9484b_/jsch.hpi";
        sha256 = "f0eb7f7ebaf374f7040e60a56ccd8af6fe471e883957df3a4fff116dda02dc12";
        };
      };
    json-api = mkJenkinsPlugin {
      name = "json-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/json-api/20240303-101.v7a_8666713110/json-api.hpi";
        sha256 = "4b10522d1eb618a1a24694a21f2b2dce0e2e9c8f7d66a6837a74a554163d97de";
        };
      };
    json-path-api = mkJenkinsPlugin {
      name = "json-path-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/json-path-api/2.9.0-118.v7f23ed82a_8b_8/json-path-api.hpi";
        sha256 = "cf71719ca21a060c4e96daea900d8873dd8efa946f9bf0c15e1bc40447a6738e";
        };
      };
    junit = mkJenkinsPlugin {
      name = "junit";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/junit/1311.v39e1716e4eb_e/junit.hpi";
        sha256 = "31f54c28c516eb5c2f15676d68611770a08fd3379416ba50db8c4fd256edd9c5";
        };
      };
    mailer = mkJenkinsPlugin {
      name = "mailer";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/mailer/489.vd4b_25144138f/mailer.hpi";
        sha256 = "1d836fe30c6515f3918f951d12a4f4aad1d9108eeaa059ff8beaae5e44527da0";
        };
      };
    mapdb-api = mkJenkinsPlugin {
      name = "mapdb-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/mapdb-api/1.0.9-40.v58107308b_7a_7/mapdb-api.hpi";
        sha256 = "0dfd7a97d4a3436a740c82195dcdf2e102a5f0d7845db49b525a2c85f065663a";
        };
      };
    matrix-auth = mkJenkinsPlugin {
      name = "matrix-auth";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/matrix-auth/3.2.3/matrix-auth.hpi";
        sha256 = "89bd9e94563000f5af09cca3cb8017c56a216d1b4bd999af785bdd920249d014";
        };
      };
    matrix-project = mkJenkinsPlugin {
      name = "matrix-project";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/matrix-project/840.v812f627cb_578/matrix-project.hpi";
        sha256 = "06e009b903e74d6142c51207b45b52a94a728fa21460e7cb0bc001eaa8dd51c2";
        };
      };
    maven-plugin = mkJenkinsPlugin {
      name = "maven-plugin";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/maven-plugin/3.24/maven-plugin.hpi";
        sha256 = "200f92c766c04d9b609b742553e13041db3e2680e0ba655a1c6e405e583c49c6";
        };
      };
    metrics = mkJenkinsPlugin {
      name = "metrics";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/metrics/4.2.21-458.vcf496cb_839e4/metrics.hpi";
        sha256 = "21181ffdced39719cd646cfc705ad0dc490f4f3bf529b1442fc549c50eab3f39";
        };
      };
    mina-sshd-api-common = mkJenkinsPlugin {
      name = "mina-sshd-api-common";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/mina-sshd-api-common/2.14.0-133.vcc091215a_358/mina-sshd-api-common.hpi";
        sha256 = "21ee7c041e0a559f446da6cd8a1dda92403fdf639442546f7d10a6e757dd7535";
        };
      };
    mina-sshd-api-core = mkJenkinsPlugin {
      name = "mina-sshd-api-core";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/mina-sshd-api-core/2.14.0-133.vcc091215a_358/mina-sshd-api-core.hpi";
        sha256 = "656cb34a566c2b40b21459ebda6fd5f83decc54945a2783c78a8d677bf396a7b";
        };
      };
    node-iterator-api = mkJenkinsPlugin {
      name = "node-iterator-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/node-iterator-api/55.v3b_77d4032326/node-iterator-api.hpi";
        sha256 = "c9b2d8c7df2091a191f5562a35454ddc2343cfe9c274b1f6b5a83980f52b422f";
        };
      };
    okhttp-api = mkJenkinsPlugin {
      name = "okhttp-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/okhttp-api/4.11.0-181.v1de5b_83857df/okhttp-api.hpi";
        sha256 = "de2eff7fca3457b8a053976c8c0030f7c85b8aae21ecd821aff53a16544cdb35";
        };
      };
    parameterized-trigger = mkJenkinsPlugin {
      name = "parameterized-trigger";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/parameterized-trigger/806.vf6fff3e28c3e/parameterized-trigger.hpi";
        sha256 = "a771a5cc77e16270938af28e311970eec132cb0666b6b9af37422ae606c5aaf3";
        };
      };
    pipeline-groovy-lib = mkJenkinsPlugin {
      name = "pipeline-groovy-lib";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/pipeline-groovy-lib/744.v5b_556ee7c253/pipeline-groovy-lib.hpi";
        sha256 = "4182ccb5756986350899051594e66022b5b2c851705bbd1ba2f72ac67a7f13da";
        };
      };
    plain-credentials = mkJenkinsPlugin {
      name = "plain-credentials";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/plain-credentials/183.va_de8f1dd5a_2b_/plain-credentials.hpi";
        sha256 = "9422eaa765e6591e3c845bfec9c105f5600a058951a2940aec5be0ed76ea813a";
        };
      };
    plugin-util-api = mkJenkinsPlugin {
      name = "plugin-util-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/plugin-util-api/5.1.0/plugin-util-api.hpi";
        sha256 = "f3663009736c677afea03b566555459f8ef15164863743671e31f4f675474ceb";
        };
      };
    prism-api = mkJenkinsPlugin {
      name = "prism-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/prism-api/1.29.0-18/prism-api.hpi";
        sha256 = "ebaa9efa493822245929957137b430cd36adf1e43c344f941aa2429a0013507d";
        };
      };
    promoted-builds = mkJenkinsPlugin {
      name = "promoted-builds";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/promoted-builds/965.vcda_c6a_e0998f/promoted-builds.hpi";
        sha256 = "414dec09daee76811164966a1058307da65c8f9fb67f13cd7311d578d3ba15bf";
        };
      };
    rebuild = mkJenkinsPlugin {
      name = "rebuild";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/rebuild/332.va_1ee476d8f6d/rebuild.hpi";
        sha256 = "60eb87df685c714c89a8a7b6315a0332c2edcb19d149dd2099ed0cb25f55ba41";
        };
      };
    run-condition = mkJenkinsPlugin {
      name = "run-condition";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/run-condition/1.7/run-condition.hpi";
        sha256 = "d8601f47c021f8c6b8275735f5c023fec57b65189028e21abac91d42add0be42";
        };
      };
    scm-api = mkJenkinsPlugin {
      name = "scm-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/scm-api/698.v8e3b_c788f0a_6/scm-api.hpi";
        sha256 = "49386b769c66f496ae7ddd5e8fe6140ff33a7ae40f5ff732d539a4e8a1258876";
        };
      };
    script-security = mkJenkinsPlugin {
      name = "script-security";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/script-security/1369.v9b_98a_4e95b_2d/script-security.hpi";
        sha256 = "bf771fd9b14ff6a6c76b572832b8a7fa5824eb2a6e87392f6eb640224f5485e4";
        };
      };
    snakeyaml-api = mkJenkinsPlugin {
      name = "snakeyaml-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/snakeyaml-api/2.3-123.v13484c65210a_/snakeyaml-api.hpi";
        sha256 = "d5b81a0d0cfd411de76daefd91b1dcdc0a573bc5be9ff6ed1f47411fadae13fe";
        };
      };
    ssh-credentials = mkJenkinsPlugin {
      name = "ssh-credentials";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/ssh-credentials/349.vb_8b_6b_9709f5b_/ssh-credentials.hpi";
        sha256 = "9794ef186ef33735522b1915cad95f5d11196c9bf9ca4d0e46e0b1ef0464a3e7";
        };
      };
    ssh-slaves = mkJenkinsPlugin {
      name = "ssh-slaves";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/ssh-slaves/2.973.v0fa_8c0dea_f9f/ssh-slaves.hpi";
        sha256 = "72211c82d1855cf517dac1d4d961d272386e199fda8212885cb077316725749b";
        };
      };
    structs = mkJenkinsPlugin {
      name = "structs";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/structs/338.v848422169819/structs.hpi";
        sha256 = "7cae811a39788f58a954774631f0a279d4bf5e32672837268a85382267a8af66";
        };
      };
    subversion = mkJenkinsPlugin {
      name = "subversion";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/subversion/1281.vc8837f91a_07a_/subversion.hpi";
        sha256 = "0a5e00fae92b8d9c3c7d26320132f8f2de94fa8c0f1be2130f39892877deb1d1";
        };
      };
    support-core = mkJenkinsPlugin {
      name = "support-core";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/support-core/1523.v5486c8d6da_f3/support-core.hpi";
        sha256 = "74fe56a5892890ea9c7b8ae6ea1d463346cd15063d815caee98747dafa62b11d";
        };
      };
    token-macro = mkJenkinsPlugin {
      name = "token-macro";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/token-macro/400.v35420b_922dcb_/token-macro.hpi";
        sha256 = "822726088a5893f248b7bba1aea92ef6df1534b64acc0a23e2fc976db33439c8";
        };
      };
    trilead-api = mkJenkinsPlugin {
      name = "trilead-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/trilead-api/2.147.vb_73cc728a_32e/trilead-api.hpi";
        sha256 = "25b8858b595b75db10248f8a2dfdbedf049d4356f9b1c096573f845c9a962e4d";
        };
      };
    variant = mkJenkinsPlugin {
      name = "variant";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/variant/60.v7290fc0eb_b_cd/variant.hpi";
        sha256 = "acbf1aebb9607efe0518b33c9dde9bd50c03d6a1a0fa62255865f3cf941fa458";
        };
      };
    vsphere-cloud = mkJenkinsPlugin {
      name = "vsphere-cloud";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/vsphere-cloud/2.27/vsphere-cloud.hpi";
        sha256 = "b584e8c515cdf41fa47740087677e11af80c402ef6c4fb5f153b9d8e05ccbdea";
        };
      };
    workflow-api = mkJenkinsPlugin {
      name = "workflow-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-api/1336.vee415d95c521/workflow-api.hpi";
        sha256 = "2c63792ec7adad277d070afd65c9550179de7c3690a9ec39de5db9969d60361e";
        };
      };
    workflow-basic-steps = mkJenkinsPlugin {
      name = "workflow-basic-steps";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-basic-steps/1058.vcb_fc1e3a_21a_9/workflow-basic-steps.hpi";
        sha256 = "1d17becd03748cc6cce009cbba0ed35a28d17041f72c056b2eaa03615541374f";
        };
      };
    workflow-cps = mkJenkinsPlugin {
      name = "workflow-cps";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-cps/4000.v5198556e9cea_/workflow-cps.hpi";
        sha256 = "d69a3c3f1276039430ede521e924ee6be009915a5eab3173f3816237d431899d";
        };
      };
    workflow-durable-task-step = mkJenkinsPlugin {
      name = "workflow-durable-task-step";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-durable-task-step/1398.vf6c9e89e5988/workflow-durable-task-step.hpi";
        sha256 = "aedea85c52ebe0049437a46074efb6abf34b7f39fcf65c8f1a4ab53de2527bd6";
        };
      };
    workflow-job = mkJenkinsPlugin {
      name = "workflow-job";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-job/1472.ve4d5eca_143c4/workflow-job.hpi";
        sha256 = "062b26c8e473153c6760a099d8915c66c84f624d9b2b117d66c778ce8a63ef3b";
        };
      };
    workflow-multibranch = mkJenkinsPlugin {
      name = "workflow-multibranch";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-multibranch/795.ve0cb_1f45ca_9a_/workflow-multibranch.hpi";
        sha256 = "a215343149438ee8515394ff9b0c6fe77920b03f14977eb43242d0446683ce6b";
        };
      };
    workflow-scm-step = mkJenkinsPlugin {
      name = "workflow-scm-step";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-scm-step/427.v4ca_6512e7df1/workflow-scm-step.hpi";
        sha256 = "4a06c4667e1bc437e89107abd9a316adaf51fca4fd504d12a525194777d34ad8";
        };
      };
    workflow-step-api = mkJenkinsPlugin {
      name = "workflow-step-api";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-step-api/678.v3ee58b_469476/workflow-step-api.hpi";
        sha256 = "40e450133a095bb9ccf058b6bf2cfa3f0938a9889f5e494d61dfb0adea518b3d";
        };
      };
    workflow-support = mkJenkinsPlugin {
      name = "workflow-support";
      src = fetchurl {
        url = "https://updates.jenkins-ci.org/download/plugins/workflow-support/936.v9fa_77211ca_e1/workflow-support.hpi";
        sha256 = "2dfc7f9c984e2bfcd2753b26afbc3f9b23c72a0dd8b9c254507cd777a21472d5";
        };
      };
    }