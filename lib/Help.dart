import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
        backgroundColor: Colors.orange,
      ),
      body: GridView(
        padding: EdgeInsets.all(12),
    children: [
      card('asset/images/Exchange.png', 'Exchange Rate','None'),
      card('asset/images/Email.png', 'Email Activation','None'),
      card('asset/images/ATM.png', 'ATM branches','None'),
      card('asset/images/iban Inquiry.png', 'IBAN','None'),
      card('asset/images/Remittance Inquiry.png', 'Remittance Inquiry','None'),
      card('asset/images/Self Services.png', 'Self Services','None')
    ],
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
    childAspectRatio: 2 / 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
      )
      )
    );
  }
}
Container card(String path,String lettter,String url){
  return Container(
    decoration: BoxDecoration(
        color: Color(0xffaad8d3),  // Card Color
        borderRadius: BorderRadius.circular(12)
    ),
    // color: Color(0xfffcffe0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){launch(url);},
            child:Image.asset(path,height: 70,),
          ),
          SizedBox(height: 5),
          Text(lettter)
        ],
      ),
    ),
  );
}
