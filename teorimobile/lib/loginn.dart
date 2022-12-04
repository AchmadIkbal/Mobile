import 'package:flutter/material.dart';
import 'bottom.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
          children: [
               Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/6b/b1/a1/6bb1a1abd0d9e1bd45aed3296162d0ff.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),

            Center(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 60.0),
                        child: Center(
                          child: Container(
                            width: 500,
                            height: 50,

                            child: Center(
                              child: Text(
                                'Login Akun',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40, color: Colors.white70
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          onChanged: (value){
                            username = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              labelText: 'Username',
                              hintText: 'Enter valid Username'
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),

                      Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          onChanged: (value){
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)
                              ),
                              labelText: 'Password',
                              hintText: 'Enter secure password'
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 35 ,
                          width: 1500,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: (isLoginSuccess) ? Colors.blueGrey : Colors.blueAccent //ternary operation
                            ),
                            child: Text("Login"),
                            onPressed: (){
                              String text = "";
                              if(username == "admin" && password == "admin"){
                                setState(() {
                                  text = "Login Success";
                                  isLoginSuccess = true;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context){
                                      return MyStatefulWidget();
                                    }),);
                                });
                              }
                              else{
                                setState(() {
                                  text = "Login Failed";
                                  isLoginSuccess = false;
                                }
                                );
                              }

                              SnackBar snackBar = SnackBar(
                                content: Text(text),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
      ),
    );
  }
}