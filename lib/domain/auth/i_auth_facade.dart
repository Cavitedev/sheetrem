import 'package:dartz/dartz.dart';
import 'package:sheetrem/domain/user/User.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();

  Option<User> getSignedUser();
}
