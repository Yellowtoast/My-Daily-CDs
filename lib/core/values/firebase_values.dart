import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';

final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;
