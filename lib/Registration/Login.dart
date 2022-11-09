import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jackson_app/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _Formkey = GlobalKey<FormState>();


  @override
  // void initState() {
  //   // TODO: implement initState
  //   checkSession();
  // }

  final emailController=TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future login() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        await Fluttertoast.showToast(
            msg: "Invalid Username",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            textColor: Colors.red,
            backgroundColor: Colors.grey[200],
            fontSize: 16.0
        );
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        await Fluttertoast.showToast(
            msg: "Invalid Password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            textColor: Colors.red,
            backgroundColor: Colors.grey[200],
            fontSize: 16.0
        );
        passwordController.text="";
      }
    }
  }

  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 300.0),
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0, top: 8.0, right: 10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                              child: MaterialButton(
                                onPressed: checkLoginCredentials,
                                color: Colors.lightBlue,
                                // onPressed: () {
                                //   if (usernameController != null &&
                                //       usernameController.text == "Yash" &&
                                //       passwordController != null &&
                                //       passwordController.text == "yash@2810") {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) => Home()));
                                //     saveSession();
                                //   }
                                // },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  checkLoginCredentials() async {
    if(emailController.text.toString().isEmpty || passwordController.text.toString().isEmpty){
      await Fluttertoast.showToast(
          msg: "Please provide valid credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.red,
          backgroundColor: Colors.grey[200],
          fontSize: 16.0
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    }
    else{
      login();
    }
  }

  saveSession() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("Status", "LoggedIn");
  }

  checkSession() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs
        .getString("Status")
        .toString()
        .isNotEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
}
