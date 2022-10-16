import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Personal_Info extends StatefulWidget {
  const Personal_Info({Key? key}) : super(key: key);

  @override
  State<Personal_Info> createState() => _Personal_InfoState();
}

class _Personal_InfoState extends State<Personal_Info> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Profile',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  height: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/profile.png'),
                      )
                  ),
                ),
                Center(
                  child: Text('Personal Information',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                    ),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 450,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SingleChildScrollView(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('Username:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Name:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Phone Number:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Email:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Address:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Designation:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Department:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Date of Birth:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Date of joining:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('PF No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Aadhar No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Account No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('UAN No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('ESI No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('PAN No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('JSI001',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),

                              ),
                              SizedBox(height: 20,),
                              Text('Patel Hiteshbhai ',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('9924140815',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('jsi001@gmail.com',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('GIDC, Ankleshwar',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Head',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Admin',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),

                              SizedBox(height: 20,),
                              Text('21/05/80',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('13/10/2022',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('987654321',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('123456789',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('123456789',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('987654321',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('987654321',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('123456789',
                                style:TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),

    );
  }
}