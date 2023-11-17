import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redfire/core/constants/constants.dart';
import 'package:redfire/core/constants/firebase_constants.dart';
import 'package:redfire/models/user_models.dart';

import '../../../core/providers/firebase_providers.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    auth: ref.read(authProvider),
    firestore: ref.read(firestoreProvider),
    googleSignIn: ref.read(googleSignInProvider),
  ),
);

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _fireStore;
  final GoogleSignIn _googleSignIn;

  AuthRepository({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
  })  : _auth = auth,
        _fireStore = firestore,
        _googleSignIn = googleSignIn;

  // Firestore collection getter method
  CollectionReference get _users =>
      _fireStore.collection(FirebaseConstants.usersCollection);

  Future<UserModels> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // creating and storing user credentials to firestore(firebase)

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

// remove late frim here later on in the application
      late UserModels userModel;

      // Checks if user is new
      if (userCredential.additionalUserInfo!.isNewUser) {
        userModel = UserModels(
          name: userCredential.user!.displayName ?? 'No Name',
          profilePic: userCredential.user!.photoURL ?? Constants.avatarDefault,
          banner: Constants.bannerDefault,
          uid: userCredential.user!.uid,
          isAuthenticated: true,
          karma: 0,
          awards: [],
        );
        await _users.doc(userCredential.user!.uid).set(userModel.toMap());
      }

      return userModel;
    } catch (e) {
      rethrow;
    }
  }
}
