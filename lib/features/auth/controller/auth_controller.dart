import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfire/features/auth/repository/auth_repository.dart';

import '../../../core/utils.dart';
import '../../../models/user_models.dart';

final userProvider = StateProvider<UserModels?>((ref) => null);

// Create a construstor for auth controller, create a new instance of
//the auth repo and then binds it to the private variable

// Create a provider for thr auth controller
final authControllerProvider = Provider(
  (ref) => AuthController(
    authRepository: ref.read(authRepositoryProvider),
    ref: ref,
  ),
);

class AuthController {
  final AuthRepository _authRepository;
  final Ref _ref;
  AuthController({required AuthRepository authRepository, required Ref ref})
      : _authRepository = authRepository,
        _ref = ref;

  // The private variable are gonna be used in all the various classes to be created.

  // Using the signInwithGoogle Function created earlier
  void sigInWithGoogle(BuildContext context) async {
    final user = await _authRepository.signInWithGoogle();
    // The code below handles errors
    user.fold(
        (l) => showSnackBar(context, l.message),
        (UserModels) =>
            _ref.read(userProvider.notifier).update((state) => UserModels));
  }
}
