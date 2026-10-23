
import 'package:authttt/features/Data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRemoteDataSource {
   final FirebaseAuth firebaseAuth;
  AuthRemoteDataSource( this.firebaseAuth);
  Future<UserModel>signIn({required String email,required String password}) async{
    final credintial=await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return UserModel.fromFirebaseAuth(credintial.user!);

  }
   Future<UserModel>signUp({required String email,required String password}) async{
     final credintial=await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
     return UserModel.fromFirebaseAuth(credintial.user!);

   }


}