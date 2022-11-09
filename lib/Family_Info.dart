import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Family_Info extends StatefulWidget {
  const Family_Info({Key? key}) : super(key: key);

  @override
  State<Family_Info> createState() => _Family_InfoState();
}

class _Family_InfoState extends State<Family_Info> {
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
        body: isLoading?Center(child: CircularProgressIndicator(color: Colors.blueAccent ,),):SafeArea(
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
                                Text(f_name.toString(),
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(f_mob,
                                  style:TextStyle(
                                      // fontWeight: FontWeight.bold
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(f_dob,
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(f_aadhar.toString(),
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
                        Text(m_name.toString(),
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(m_mob,
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(m_dob,
                          style:TextStyle(
                              fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(m_aadhar.toString(),
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
                                Text(s_name.toString(),
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(s_mob,
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(s_dob,
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(s_aadhar.toString(),
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
                                Text(c_name.toString(),
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(c_mob,
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(c_dob,
                                  style:TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(c_aadhar,
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
  var f_name;
  var f_mob;
  var f_dob;
  var f_aadhar;

  var m_name;
  var m_mob;
  var m_dob;
  var m_aadhar;

  var s_name;
  var s_mob;
  var s_dob;
  var s_aadhar;

  var c_name;
  var c_mob;
  var c_dob;
  var c_aadhar;
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
    f_name=await getProfileInfo(user, "fathern");
    f_mob=await getProfileInfo(user, "fathermob");
    f_dob=await getProfileInfo(user, "fatherdob");
    f_aadhar=await getProfileInfo(user, "fatheraadhar");

    m_name=await getProfileInfo(user, "mothern");
    m_mob=await getProfileInfo(user, "mothermob");
    m_dob=await getProfileInfo(user, "motherdob");
    m_aadhar=await getProfileInfo(user, "motheraadhar");


    s_name=await getProfileInfo(user, "siblingn");
    s_mob=await getProfileInfo(user, "siblingmob");
    s_dob=await getProfileInfo(user, "siblingdob");
    s_aadhar=await getProfileInfo(user, "siblingaadhar");

    c_name=await getProfileInfo(user, "childn");
    c_mob=await getProfileInfo(user, "childmob");
    c_dob=await getProfileInfo(user, "childdob");
    c_aadhar=await getProfileInfo(user, "childaadhar");

  }
}