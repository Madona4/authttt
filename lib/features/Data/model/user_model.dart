import 'package:authttt/features/Domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  final String email;
  final String uid;
  final String?displayname;
  UserModel({required this.email,required this.uid,this.displayname});
  factory UserModel.fromFirebaseAuth(User user){
    return UserModel(email:user. email!, uid: user.uid,displayname: user.displayName);
  }
  UserEntity toEntity(){
    return UserEntity(email: email, uid: uid);
    
}
}