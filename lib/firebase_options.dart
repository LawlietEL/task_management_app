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
        return macos;
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
    apiKey: 'AIzaSyAJQbaniRpw4SsP5ukijgKWGJiNSUap9o8',
    appId: '1:559400648428:web:371b0cf04344dc356cafc9',
    messagingSenderId: '559400648428',
    projectId: 'task-management-apps-becca',
    authDomain: 'task-management-apps-becca.firebaseapp.com',
    storageBucket: 'task-management-apps-becca.appspot.com',
    measurementId: 'G-LSLC7M8B26',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiLBewDq3dGVlabkkk9nQiessl3t8QbTw',
    appId: '1:559400648428:android:92669c5abddada366cafc9',
    messagingSenderId: '559400648428',
    projectId: 'task-management-apps-becca',
    storageBucket: 'task-management-apps-becca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMSv1OXPf5qhKCFS1_emny90OpERoXYCw',
    appId: '1:559400648428:ios:ffd52298b3cc1c316cafc9',
    messagingSenderId: '559400648428',
    projectId: 'task-management-apps-becca',
    storageBucket: 'task-management-apps-becca.appspot.com',
    iosBundleId: 'com.example.taskManagementApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMSv1OXPf5qhKCFS1_emny90OpERoXYCw',
    appId: '1:559400648428:ios:c2fd1f00207ca9b86cafc9',
    messagingSenderId: '559400648428',
    projectId: 'task-management-apps-becca',
    storageBucket: 'task-management-apps-becca.appspot.com',
    iosBundleId: 'com.example.taskManagementApp.RunnerTests',
  );
}
