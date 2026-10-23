import 'package:authttt/features/Domain/entities/user_entity.dart';
import 'package:authttt/features/Domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class SignUpUseCase {
AuthRepo authRepo;
SignUpUseCase({required this.authRepo});
Future<UserEntity>call({required String email,required String password}) async{
  return await authRepo.SignUp(email: email, password: password);
}


}