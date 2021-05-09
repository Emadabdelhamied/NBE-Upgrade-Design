import 'package:flutter/material.dart';
class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Transactions'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            card('2000 \$ Added From Eslam Abd El-Hamied'),
            card('1000 \$ From Mona'),
            card('1250 \$ Added From NBE'),
            card('2000 \$ Withdraw From ATM'),
            card('2000 \$ Added From 123456789'),
            card('2000 \$ Added From Sherif'),
            card('2000 \$ Added From Card end with 4444'),
            card('2000 \$ From Eslam Abd El-Hamied'),
            card('2000 \$ From Eslam Abd El-Hamied'),
            card('2000 \$ From Eslam Abd El-Hamied'),
            card('2000 \$ From Eslam Abd El-Hamied'),
            card('2000 \$ From Eslam Abd El-Hamied'),

          ],
        ),
      ),
    );
  }
}
Column card(String transaction){
  return Column(
    children: [
      Container(

        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Center(child: Text(transaction,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),),),
      ),
      SizedBox(height: 10,)
    ],
  );
}
