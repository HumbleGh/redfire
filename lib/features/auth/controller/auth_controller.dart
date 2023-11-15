import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redfire/features/auth/repository/auth_repository.dart';

// Create a construstor for auth controller, create a new instance of
//the auth repo and then binds it to the private variable

// Create a provider for thr auth controller
final authControllerProvider = Provider(
    (ref) => AuthController(authRepository: ref.read(authRepositoryProvider)));

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  // The private variable are gonna be used in all the various classes to be created.

  // Using the signInwithGoogle Function created earlier

  void sigInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
