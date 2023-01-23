import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class My5To1DietFirebaseUser {
  My5To1DietFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

My5To1DietFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<My5To1DietFirebaseUser> my5To1DietFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<My5To1DietFirebaseUser>(
      (user) {
        currentUser = My5To1DietFirebaseUser(user);
        if (!kIsWeb) {
          FirebaseCrashlytics.instance.setUserIdentifier(user?.uid ?? '');
        }
        return currentUser!;
      },
    );
