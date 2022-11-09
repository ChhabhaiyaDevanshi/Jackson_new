import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MySalary extends StatefulWidget {
  const MySalary({Key? key}) : super(key: key);

  @override
  State<MySalary> createState() => _MySalaryState();
}

class _MySalaryState extends State<MySalary> {
  var isLoading=true;
  DateTime date=DateTime.now();
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
            child: Text('Salary',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
        ),
      ),
      body: isLoading?Center(child: CircularProgressIndicator(color: Colors.blueAccent,),):SafeArea(

        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text('November/${date.year}',
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
                              Text(salary,
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(pf,
                                style:TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(acc,
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

  var pf;
  var acc;
  var salary;


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

    pf=await getProfileInfo(user, "pf");
    salary=await getProfileInfo(user, "salary");
    acc=await getProfileInfo(user, "acc");
  }

}