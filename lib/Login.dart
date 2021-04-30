import 'package:flutter/material.dart';


class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool a=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Container(
                margin: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 20,),
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(fontSize: 10,),
                      prefixIcon: Icon(Icons.alternate_email,color: Colors.orange,)
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20,),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(fontSize: 10,),
                    prefixIcon: Icon(Icons.lock,color: Colors.orange),
                    suffixIcon: IconButton(
                      icon: Icon(
                          a? Icons.visibility:Icons.visibility_off
                      ),
                      onPressed: (){
                        setState((){
                          a=!a;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: a,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
