import 'package:flutter/material.dart';

class Family_Info extends StatefulWidget {
  const Family_Info({Key? key}) : super(key: key);

  @override
  State<Family_Info> createState() => _Family_InfoState();
}

class _Family_InfoState extends State<Family_Info> {
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
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Family Information',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: SingleChildScrollView(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Father’s Name:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Phone Number:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('DOB:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Aadhar No.:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text('Patel Prakash',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('9924140815',
                                  style:TextStyle(
                                      // fontWeight: FontWeight.bold
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('21/05/1980',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('987654321',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          SizedBox(height: 20,),
          Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Mother’s Name:',
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Phone Number:',
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('DOB:',
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Aadhar No.:',
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text('Patel Archana',
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('9924140817',
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('11/05/1980',
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('987654321',
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
                  SizedBox(height: 20,),
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: SingleChildScrollView(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Siblings’s Name:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Phone Number:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('DOB:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Aadhar No.:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text('Patel Rajesh',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('9898986611',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('30/07/1980',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('987654321',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: SingleChildScrollView(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Child’s Name:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Phone Number:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('DOB:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Aadhar No.:',
                                  style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text('Patel Arya',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('--',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('08/05/2005',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('987654321',
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}