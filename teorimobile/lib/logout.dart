import 'package:flutter/material.dart';
import 'login.dart';
import 'bottom.dart';
import 'loginn.dart';
// import 'bottom_nav.dart';
class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg5.jpg", width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Apakah Anda Yakin ? ",
                      style: TextStyle(fontSize: 20, color: Colors.white
                      ),),
                    SizedBox(height: 10,),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return  LoginPageFul();
                            }),);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black) ),
                          primary: Colors.deepPurple, // background
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold
                          ),
                          // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                        ),
                        child: const Text(
                          'Ya',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return Login();
                            }),);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black) ),
                          primary: Colors.deepPurple, // background
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold
                          ),
                          // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                        ),
                        child: const Text(
                          'Tidak',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
