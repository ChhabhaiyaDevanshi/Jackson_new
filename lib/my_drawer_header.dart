import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}
final user = FirebaseAuth.instance.currentUser!;
get username => user.email?.substring(0,6);

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      width: double.infinity,
      height: 200.0,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 30),
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/profile.png'),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Username: "+ username.toString().toUpperCase(),
            style: TextStyle(
              color: Colors.white,fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        ],
      ),
    );
  }
}
