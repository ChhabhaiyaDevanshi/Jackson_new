import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jackson_app/ProfilePage.dart';
import 'package:jackson_app/Registration/Login.dart';
import 'package:jackson_app/my_drawer_header.dart';
import 'package:jackson_app/MyHealth.dart';
import 'package:jackson_app/MyAttendance.dart';
import 'package:jackson_app/Leave.dart';
import 'package:jackson_app/MySalary.dart';
import 'package:jackson_app/MyShift.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var currentPage = DrawerSelections.Products;
  final user = FirebaseAuth.instance.currentUser!;
  var currentPage = DrawerSelections.Products;

  @override
  Widget build(BuildContext context) {
    var container;
    // if (currentPage == DrawerSelections.Logout) {
    //   container = Login();
    // }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text("Dashboard"),
        ),
        actions: <Widget>[
          IconButton(onPressed: (){FirebaseAuth.instance.signOut();}, icon: Icon(Icons.logout_rounded))
        ],
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 20.0),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6E6E6),
                              radius: 50,
                              child: Icon(
                                Icons.person,
                                size: 80,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text("Profile",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAttendance()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 20.0),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6E6E6),
                              radius: 50,
                              child: Icon(
                                Icons.local_hospital,
                                size: 80,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text("Attendance",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 20.0),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6E6E6),
                              radius: 50,
                              child: Icon(
                                Icons.time_to_leave,
                                size: 80,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text("Leave",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MySalary()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 20.0),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffE6E6E6),
                              radius: 50,
                              child: Icon(
                                Icons.monetization_on,
                                size: 80,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text("Salary",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget MyDrawerList() {
  //   return Container(
  //     padding: EdgeInsets.only(top: 15.0),
  //     child: Column(
  //       children: [
  //         ListTile(
  //           title: Text('Logout'),
  //           onTap: (){
  //             FirebaseAuth.instance.signOut();
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }
  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          menuItem(1, "Products",
              currentPage == DrawerSelections.Products ? true : false),
          menuItem(1, "About Us",
              currentPage == DrawerSelections.About_us ? true : false),
          // menuItem(1, "Logout",
          //     currentPage == DrawerSelections.Logout ? true: false),
        ],
      ),
    );
  }
  Widget menuItem(int id, String title, bool selected) {
    return Material(
      child: InkWell(
          onTap: () {
            FirebaseAuth.instance.signOut();
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
  deleteSession()async
  {
    final prefs=await SharedPreferences.getInstance();
    prefs.remove("Status");
    print("Clicked on detelete session");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
  }

}

enum DrawerSelections { Products, About_us, Logout }

//   Widget menuItem(int id, String title, bool selected) {
//     return Material(
//       child: InkWell(
//           onTap: () {},
//           child: Padding(
//             padding: EdgeInsets.all(15.0),
//
//             child: Row(
//               children: [
//                 Expanded(
//                     flex: 1,
//                     child: Text(
//                       title,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     )),
//               ],
//             ),
//           )),
//     );
//   }
//
//   deleteSession() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.remove("Status");
//     print("Clicked on detelete session");
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
//   }
// }
//
// enum DrawerSelections { Products, About_us, Logout }
