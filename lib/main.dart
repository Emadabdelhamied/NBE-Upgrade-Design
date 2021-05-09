import 'package:flutter/material.dart';
import 'HomeWithSidebar.dart';
import 'SignUp.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Center(
          child: AnimatedSplashScreen(
            splash: Image.asset(
              'asset/images/NBE-removebg.png',
            ),
            nextScreen: MyHomePage(),
            splashTransition: SplashTransition.rotationTransition,
            splashIconSize: 800,
          )),
      //MyHomePage(),
      routes: {
        '/homePage' : (context)=>HomeWithSidebar(),
        '/SignUpPage':(context)=>SignUpPage(),

      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool a=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.2,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("06:22 AM", style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w500
                      ),),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/cloud.png'),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("34˚ C", style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w800

                      ),)
                    ],
                  ),
                  Text("Aug 1, 2020 | Wednesday", style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('asset/images/logo.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                          Text("NBE", style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w600
                          ),),
                        SizedBox(height: 10,),

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
                  InkWell(
                    onTap: openHomePage,
                    child: Container(
                     padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xffffac30),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sign In", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),),
                            Icon(Icons.arrow_forward, size: 17,)
                          ],
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: TextButton(
                      onPressed: (){openSignPage();},
                      child: Text('Create an account',style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        color: Colors.black45
                      ),),
                      style: TextButton.styleFrom(primary: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void openHomePage()
  {
    Navigator.pushNamed(context, '/homePage');
  }
  void openSignPage(){
    Navigator.pushNamed(context, '/SignUpPage');
  }
}
