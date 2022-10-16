import 'package:flutter/material.dart';
class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {

  DateTime f_date=DateTime.now();
  DateTime t_date=DateTime.now();
  TimeOfDay f_time=TimeOfDay.now();
  TimeOfDay t_time=TimeOfDay.now();
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
            child: Text('Apply Leave',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Fill Leave Information',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
              ),
              SizedBox(height: 0.05*h,),
              Container(
                width: 0.9*w,
                child: TextField(
                  //controller: usernameController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Reason',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),),
                  style: TextStyle(
                      fontSize: 30
                  ),

                ),
              ),
              SizedBox(height: 0.07*h,),
              Container(
                width: 0.9*w,
                child: TextField(
                  //controller: usernameController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Place',

                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(30),
                    // ),
                  ),
                  style: TextStyle(
                      fontSize: 30
                  ),

                ),
              ),
              SizedBox(height: 0.07*h,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          child: Text('From Date',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () async{
                            DateTime? newDate= await showDatePicker(context: context, initialDate: f_date, firstDate: DateTime(1900), lastDate: DateTime(2100));
                            if(newDate==null) return;
                            setState(()=>f_date=newDate);
                          },
                        ),
                        SizedBox(height: 10,),
                        Text('${f_date.day}/${f_date.month}/${f_date.year}',
                          style: TextStyle(
                              fontSize: 25
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 0.17*w,),
                    Column(
                      children: [
                        ElevatedButton(
                          child: Text('To-Date',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () async{
                            DateTime? newDate= await showDatePicker(context: context, initialDate: t_date, firstDate: DateTime(1900), lastDate: DateTime(2100));
                            if(newDate==null) return;
                            setState(()=>t_date=newDate);
                          },
                        ),
                        SizedBox(height: 10,),
                        Text('${t_date.day}/${t_date.month}/${t_date.year}',
                          style: TextStyle(
                              fontSize: 25
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 0.04*h,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                          child: Text('From-Time',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () async{
                            TimeOfDay? newTime= await showTimePicker(context: context, initialTime: f_time);
                            if(newTime==null) return;
                            setState(()=>f_time=newTime);
                          },
                        ),
                        SizedBox(height: 10,),
                        Text('${f_time.hour}:${f_time.minute}',
                          style: TextStyle(
                              fontSize: 25
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 0.17*w,),
                    Column(
                      children: [
                        ElevatedButton(
                          child: Text('To-Time',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () async{
                            TimeOfDay? newTime= await showTimePicker(context: context, initialTime: t_time);
                            if(newTime==null) return;
                            setState(()=>t_time=newTime);
                          },
                        ),
                        SizedBox(height: 10,),
                        Text('${t_time.hour}:${t_time.minute}',
                          style: TextStyle(
                              fontSize:25
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 0.04*h,),
              MaterialButton(
                color: Colors.lightBlue,
                onPressed: (){},
                child: Text(
                  'Apply',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}