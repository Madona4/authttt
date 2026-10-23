import 'package:authttt/features/Domain/entities/user_entity.dart';

abstract class AuthState {}
class AuthInitial extends AuthState{}
class AuthLoading extends AuthState{}
class AuthSuccess extends AuthState{
  final UserEntity userEntity;
  AuthSuccess(this.userEntity);
}
class AuthError extends AuthState{
  String? errorMessage;
  AuthError(this.errorMessage);

}

