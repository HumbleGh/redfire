import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfire/features/auth/repository/auth_repository.dart';

import '../../../core/utils.dart';
import '../../../models/user_models.dart';

final userProvider = StateProvider<UserModels?>((ref) => null);

// Create a construstor for auth controller, create a new instance of
//the auth repo and then binds it to the private variable

// Create a provider for thr auth controller
final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    ref: ref,
  ),
);

class AuthController extends StateNotifier<bool> {
  final AuthRepository _authRepository;
  final Ref _ref;
  AuthController({required AuthRepository authRepository, required Ref ref})
      : _authRepository = authRepository,
        _ref = ref,
        super(false); //Represents loading

  // The private variable are gonna be used in all the various classes to be created.

  // Using the signInwithGoogle Function created earlier
  void sigInWithGoogle(BuildContext context) async {
    state = true;
    final user = await _authRepository.signInWithGoogle();
    state = false;
    // The code below handles errors
    user.fold(
        (l) => showSnackBar(context, l.message),
        (userModel) =>
            _ref.read(userProvider.notifier).update((state) => userModel));
  }
}
