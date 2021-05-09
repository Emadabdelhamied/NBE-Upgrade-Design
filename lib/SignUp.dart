import 'package:flutter/material.dart';
import 'main.dart';
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      routes: {
        '/returnHomePage' : (context)=> MyHomePage(),
      },
    );
  }
}


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool b=true;
  bool c=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Image.asset('asset/images/NBE-removebg.png'),
                ),
                SizedBox(height: 40,),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 20,),
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(fontSize: 10,),
                        prefixIcon: Icon(Icons.person,color: Colors.orange,)
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
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
                        labelText: 'Card Number',
                        labelStyle: TextStyle(fontSize: 20,),
                        hintText: 'Enter your Card Number',
                        hintStyle: TextStyle(fontSize: 10,),
                        prefixIcon: Icon(Icons.account_balance_wallet,color: Colors.orange,)
                    ),
                    keyboardType: TextInputType.number,
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
                            b? Icons.visibility:Icons.visibility_off
                        ),
                        onPressed: (){
                          setState((){
                            b=!b;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: b,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(fontSize: 20,),
                      hintText: 'Confirm your password',
                      hintStyle: TextStyle(fontSize: 10,),
                      prefixIcon: Icon(Icons.lock,color: Colors.orange),
                      suffixIcon: IconButton(
                        icon: Icon(
                            c? Icons.visibility:Icons.visibility_off
                        ),
                        onPressed: (){
                          setState((){
                            c=!c;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: c,
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: FlatButton(
                    onPressed: (){returnHome();},
                    child: Text('Sign Up',style: TextStyle(color: Colors.black)),
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  void returnHome(){
    Navigator.pushNamed(context, '/returnHomePage');
  }
}
