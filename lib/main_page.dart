import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jackson_app/Registration/Login.dart';
import 'package:jackson_app/home.dart';

 class MainPage extends StatelessWidget {
   const MainPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: StreamBuilder<User?>(
         stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context, snapshot){
           if(snapshot.hasData){  //if user is already logged in than redirect to homepage else login page
             return Home();
           }
           else{
             return Login();
           }
         },
       ),
     );
   }
 }
