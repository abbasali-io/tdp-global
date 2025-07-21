import 'package:firebase_remote_config/firebase_remote_config.dart';

Future initializeFirebaseRemoteConfig() async {
  try {
    await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await FirebaseRemoteConfig.instance.setDefaults(const {
      'newUserImageUrl':
          'https://firebasestorage.googleapis.com/v0/b/thedatesproject.appspot.com/o/Thumbnails%2Fthumbnail.png?alt=media&token=db5f3f35-c213-4ab6-83f7-96ee0a31ee8d',
      'currentVersion': 0,
      'theDateProjectFavicon':
          'https://firebasestorage.googleapis.com/v0/b/the-dateproject.appspot.com/o/Artboard%2011.png?alt=media&token=eda1e00c-7de4-4851-835a-1d3caeb3a9ce',
    });
    await FirebaseRemoteConfig.instance.fetchAndActivate();
  } catch (error) {
    print(error);
  }
}

String getRemoteConfigString(String key) =>
    FirebaseRemoteConfig.instance.getString(key);

bool getRemoteConfigBool(String key) =>
    FirebaseRemoteConfig.instance.getBool(key);

int getRemoteConfigInt(String key) => FirebaseRemoteConfig.instance.getInt(key);

double getRemoteConfigDouble(String key) =>
    FirebaseRemoteConfig.instance.getDouble(key);
