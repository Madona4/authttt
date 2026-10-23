import 'package:authttt/features/Domain/entities/user_entity.dart';
import 'package:authttt/features/Domain/repo/auth_repo.dart';
import 'package:authttt/features/Data/data%20source/auth_remote_data_source.dart';
import 'package:injectable/injectable.dart';

import '../data source/auth_remote_data_source.dart';
@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl(this.authRemoteDataSource);
  @override
  Future<UserEntity> SignIn({required String email, required String password}) async {
    final userModel=await authRemoteDataSource.signIn(email: email, password: password);
    return userModel.toEntity();
  }

  @override
  Future<UserEntity> SignUp({required String email, required String password}) async {
    final userModel= await authRemoteDataSource.signUp(email: email, password: password);
    return userModel.toEntity();
  }
  

}
