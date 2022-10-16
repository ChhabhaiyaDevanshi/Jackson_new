import 'package:flutter/material.dart';
import 'package:jackson_app/ApplyLeave.dart';

class Leave extends StatefulWidget {
  const Leave({Key? key}) : super(key: key);

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Leave',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('05',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 70,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('/36',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 0.90*w,
                height: 0.14*h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //SizedBox(height: 0.011*h,),
                          Text('Mon, 28 Jul',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 0.011*h,),
                          Text('Full day leave',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(height: 0.011*h,),
                          Text('Medical',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   child: TextBox,
                      // )
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top:0.0,
              //   right: 0.0,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: new IconButton(
              //         icon: Icon(Icons.add,color: Colors.red,),
              //         onPressed: () {}),
              //   ),
              // )
            ],
          ),

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>ApplyLeave())
          );
        },
        //tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}