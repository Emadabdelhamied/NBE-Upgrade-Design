import 'package:flutter/material.dart';

class SendMonyPage extends StatefulWidget {
  @override
  _SendMonyPageState createState() => _SendMonyPageState();
}

class _SendMonyPageState extends State<SendMonyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Send Money'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Image.asset('asset/images/NBE-removebg.png'),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Person Name',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    hintText: 'Emad',
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.orange,
                    )),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Card Number',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    hintText: '1234-5678-1234-5678',
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    prefixIcon: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.orange,
                    )),
                keyboardType: TextInputType.number,
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: Text('Sucess, Money Added!'),
                      action: SnackBarAction(label: 'Undo',onPressed: (){},));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Send', style: TextStyle(color: Colors.black)),
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
