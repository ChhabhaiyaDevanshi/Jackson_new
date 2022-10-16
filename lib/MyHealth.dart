import 'package:flutter/material.dart';
class MyHealth extends StatefulWidget {
  const MyHealth({Key? key}) : super(key: key);

  @override
  State<MyHealth> createState() => _MyHealthState();
}

class _MyHealthState extends State<MyHealth> {
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
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: Text('Medical Information',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
              SizedBox(height: 30,),
              Container(
                height: 280,
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
                  padding: const EdgeInsets.only(top: 40.0,left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('Blood Group:',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Doctor’s Name:',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Last Check-Up Date:',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Medical History:',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Ongoing Treatment:',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                        Column(
                          children: [
                            Text('A+',
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Bhalgamiya Yash',
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('13/10/2022',
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Diabetes',
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Pathri',
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}