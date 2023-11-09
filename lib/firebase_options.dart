// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBWgtHv9dDRsvi5k4evkYBc_mHrsADWBjg',
    appId: '1:268612230833:web:11a8229dbc2cac9a01cc90',
    messagingSenderId: '268612230833',
    projectId: 'redfire-30a84',
    authDomain: 'redfire-30a84.firebaseapp.com',
    storageBucket: 'redfire-30a84.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBix3KX5_Uz45CFKN-fRJfcHJsDmRj_W-Q',
    appId: '1:268612230833:android:2aa5863861b693c501cc90',
    messagingSenderId: '268612230833',
    projectId: 'redfire-30a84',
    storageBucket: 'redfire-30a84.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUFsGlk-t9PoiGcPUSvpxrlm7lerbOXAw',
    appId: '1:268612230833:ios:c795ce5998d8dce301cc90',
    messagingSenderId: '268612230833',
    projectId: 'redfire-30a84',
    storageBucket: 'redfire-30a84.appspot.com',
    iosBundleId: 'com.example.redfire',
  );
}
