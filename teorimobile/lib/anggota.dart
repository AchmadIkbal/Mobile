import 'package:flutter/material.dart';
import 'logout.dart';
import 'shooter.dart';
class Anggota extends StatefulWidget {
  const Anggota({Key? key}) : super(key: key);

  @override
  State<Anggota> createState() => _AnggotaState();
}

class _AnggotaState extends State<Anggota> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink[100],
      body: Stack(
        children: [
          Image.asset("assets/bg4.jpg", width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/bg2.jpg'),
              //     )
              // ),
              child: Column(
                children: [
                  Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      // side: BorderSide(
                      //   color: Colors.black,
                      // ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 120.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/bg2.jpg'),
                          ),
                          SizedBox(height: 15),
                          Text("Achmad Ikbal Rizkytama",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                          Text("124200019",
                            style: TextStyle(
                              fontSize: 18, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return PageShooter();
                          }),);
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)
                              )
                          )
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            // ignore: prefer_const_constructors
                            return PageShooter();
                          }),);
                      },
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black)
                              )
                          )
                      ),
                      child: const Text(
                        'Shooter',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),


                  // Card(
                  //   shape: RoundedRectangleBorder(
                  //     side: BorderSide(
                  //       color: Colors.black,
                  //     ),
                  //     borderRadius: BorderRadius.circular(25.0),
                  //   ),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         CircleAvatar(
                  //           radius: 110.0,
                  //           backgroundColor: Colors.transparent,
                  //           backgroundImage: AssetImage('assets/arighi1.jpeg'),
                  //         ),
                  //         SizedBox(height: 15),
                  //         Text("Virgiawan Arighi",
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 20,
                  //           ),
                  //         ),
                  //         Text("124200019",
                  //           style: TextStyle(
                  //             fontSize: 18,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
