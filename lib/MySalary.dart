import 'package:flutter/material.dart';

class MySalary extends StatefulWidget {
  const MySalary({Key? key}) : super(key: key);

  @override
  State<MySalary> createState() => _MySalaryState();
}

class _MySalaryState extends State<MySalary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Salary',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
        ),
      ),
      body: SafeArea(

        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text('September 2022',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  height: 190,
                  width: 300,
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
                    padding: const EdgeInsets.all(30.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('Salary:',
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
                              Text('Account No.:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text('20000',
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('987654321',
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('123456789',
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}