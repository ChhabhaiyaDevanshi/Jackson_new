import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
class MyHealth extends StatefulWidget {
  const MyHealth({Key? key}) : super(key: key);

  @override
  State<MyHealth> createState() => _MyHealthState();
}

class _MyHealthState extends State<MyHealth> {
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
      body: isLoading?Center(child: CircularProgressIndicator(color: Colors.blueAccent,),):SafeArea(
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
                            Text(blood.toString(),
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(doc_name.toString(),
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(checkUp_date,
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(med_history.toString(),
                              style:TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(curr_treat.toString(),
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

  var blood;
  var doc_name;
  var checkUp_date;
  var med_history;
  var curr_treat;

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
    blood=await getProfileInfo(user, "bg");
    doc_name=await getProfileInfo(user, "nod");
    checkUp_date=await getProfileInfo(user, "lcd");
    med_history=await getProfileInfo(user, "mh");
    curr_treat=await getProfileInfo(user, "ot");


  }
}