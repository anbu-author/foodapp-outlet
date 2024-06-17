import 'package:flutter/material.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'app/core/utils/pref_utils.dart';

Future<void> main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter GetX Template Dev",
    baseUrl: "http://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );
  await PrefUtils().init();
  runApp(const MyApp());
}
