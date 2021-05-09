import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfiled('Emad Abd El-Hamied Nasr',Icons.person,'Name'),
                    textfiled('emad@gmail.com',Icons.alternate_email,'Email'),
                    textfiled('1234567890',Icons.account_balance_wallet_rounded,'Card Number'),
                    textfiled('Eslam Abd El-Hamied Nasr',Icons.family_restroom_rounded,'Beneficiaries'),
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 4.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/profile.jpg'),
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 210, left: 130),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

Widget textfiled(String hintText,IconData iconn,String label){
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(child: Text(
            label,style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w800
          ),
          ),),
          SizedBox(height: 3,),
          TextField(
              decoration: InputDecoration(
                 // labelText: label,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                  labelStyle: TextStyle(fontSize: 20,),
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 20,),
                  prefixIcon: Icon(iconn,color: Colors.orange,)
              ),
            ),
        ],
      ),
    );
}
