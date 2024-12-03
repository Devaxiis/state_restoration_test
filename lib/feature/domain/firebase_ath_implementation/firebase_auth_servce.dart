
  import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


   Future<User?>  signUpWithEmailAndPassword(String email, String password)async{
     try{
       UserCredential credential =await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password) ;
       return credential.user;
     }catch (e){
       log("Some Error sign up $e");
     }
   }

   Future<User?>  signInWithEmailAndPassword(String email, String password)async{
     try{
       UserCredential credential =await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password) ;
       return credential.user;
     }catch (e){
       log("Some Error sign in $e");
     }
   }

  }