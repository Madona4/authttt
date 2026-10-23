import 'package:authttt/features/Domain/UseCase/sign_in_use_case.dart';
import 'package:authttt/features/Domain/UseCase/sign_up_use_case.dart';
import 'package:authttt/features/Presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:authttt/features/Domain/UseCase/sign_in_use_case.dart';
import 'package:authttt/features/Domain/entities/user_entity.dart';
@injectable
class AuthCubit extends Cubit<AuthState> {
  SignInUseCase signInUseCase;
  SignUpUseCase signUpUseCase;
  AuthCubit({required this.signInUseCase,required this.signUpUseCase}):super(AuthInitial());
  Future<void>signIn({
    required String email,
    required  String password
})async{
    emit(AuthLoading());
    try{
      final userEntity=await signInUseCase.call(email: email, password: password);
      emit(AuthSuccess(userEntity));
    }
    catch (e){
      emit(AuthError(e.toString()));

    }

  }
  Future<void>signUp({
    required String email,
    required  String password
  })async{
    emit(AuthLoading());
    try{
      final userEntity=await signUpUseCase.call(email: email, password: password);
      emit(AuthSuccess(userEntity));
    }
    catch (e){
      emit(AuthError(e.toString()));

    }

  }


}