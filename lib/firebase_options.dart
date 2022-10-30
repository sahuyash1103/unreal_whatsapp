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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for fuchsia - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJWwqK1oHGMWV3H-7SY0NEpsr7i5MyHW4',
    appId: '1:163380633587:android:4713e13486be44e8e9bc86',
    messagingSenderId: '163380633587',
    projectId: 'chatup-backend-48ce4',
    storageBucket: 'chatup-backend-48ce4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4Fol03m-VsQm3Qt5FLaGNzZybFGRFBz0',
    appId: '1:163380633587:ios:5d551cb8bc8f0b27e9bc86',
    messagingSenderId: '163380633587',
    projectId: 'chatup-backend-48ce4',
    storageBucket: 'chatup-backend-48ce4.appspot.com',
    androidClientId:
        '163380633587-a6uc9qq1hrhriocnklflh0ps6ng8nqmt.apps.googleusercontent.com',
    iosClientId:
        '163380633587-lbe5dgc5e2ser32tje65vg86n39h6olo.apps.googleusercontent.com',
    iosBundleId: 'com.chatup',
  );
}
