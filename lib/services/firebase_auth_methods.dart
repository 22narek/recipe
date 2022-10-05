// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:therecipes/utils/show_snackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  // EMAIL SIGN UP
  Future<void> singUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
