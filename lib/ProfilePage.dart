import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:jackson_app/Family_Info.dart';
import 'package:jackson_app/MyHealth.dart';
import 'package:jackson_app/Personal_Info.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    getProfileInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0,right: 100),
          child: Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
        body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 380,
                        height: 50,
                        child: MaterialButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Personal_Info())
                            );
                          },
                          child: Text(
                            "Personal Information",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 380,
                        height: 50,
                        child: MaterialButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Family_Info())
                            );
                          },
                          child: Text(
                            "  Family Information  ",
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: 380,
                        height: 50,
                        child: MaterialButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>MyHealth())
                            );
                          },
                          child: Text(
                            "  Medical Information  ",
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),

    );
  }
  Future getProfileInfo() async{
    FirebaseDatabase database=FirebaseDatabase.instance;
    DatabaseReference reference=database.ref("users/20CE021");
    DatabaseEvent event=await reference.once();
    //fetching data from firebase
    print(event.snapshot.value);


  }
}
