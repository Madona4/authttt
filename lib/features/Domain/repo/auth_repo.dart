import 'package:authttt/features/Domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity>SignIn({required String email,required String password});
  Future<UserEntity>SignUp({required String email,required String password});


}