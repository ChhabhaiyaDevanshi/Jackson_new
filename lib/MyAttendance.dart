import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MyAttendance extends StatefulWidget {
  const MyAttendance({Key? key}) : super(key: key);

  @override
  State<MyAttendance> createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {
  var isLoading=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setProfileData("jsi001").whenComplete((){
      print("All data fetched");
      setState((){
        isLoading=false;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Attendance',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              )
          ),
        ),
      ),
      body: isLoading?Center(child: CircularProgressIndicator(color: Colors.blueAccent,),):SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text('November 2022',
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
                  height: 130,
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
                    padding: const EdgeInsets.only(left: 40, top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('Days present:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('Days absent:',
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Text(present.toString(),
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text('1',
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
  var present;

  Future getProfileInfo(user,field) async{
    FirebaseDatabase database=FirebaseDatabase.instance;
    DatabaseReference reference=database.ref("users/jsi001");
    DatabaseEvent event=await reference.once();
    //fetching data from firebase
    print(event.snapshot.value);
    final ref=FirebaseDatabase.instance.ref();

    final snapshot=await ref.child("users/${user}/${field}").get();
    if(snapshot.exists)
    {
      return snapshot.value;
    }
    else
    {
      print("snapshot failed");
    }
  }

  Future setProfileData(user) async{
    present=await getProfileInfo(user, "present");
    //absent=await getProfileInfo(user, "field");

  }
}
