import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_dialogflow/utils/language.dart';
import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:flutter_dialogflow/v2/dialogflow_v2.dart';
class ChatBot extends StatefulWidget {
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final messageInsert = TextEditingController();
  List<Map> messsages = [];
  void response(query) async {
    AuthGoogle authGoogle = await AuthGoogle(
        fileJson: "asset/chatbot-lpaw-cd047933b29a.json")
        .build();
    Dialogflow dialogflow =
    Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NBE Bot Assist",
          ),
          backgroundColor: Colors.orange,

        ),
        body: Container(
            child:Container(
              child: Column(
                children: <Widget>[
                  Flexible(
                      child: ListView.builder(
                          reverse: true,
                          itemCount: messsages.length,
                          itemBuilder: (context, index) => chat(
                              messsages[index]["message"].toString(),
                              messsages[index]["data"]))),
                  Divider(
                    height: 3.0,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: TextField(
                              controller: messageInsert,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Send your message",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18.0)),
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          child: IconButton(

                              icon: Icon(

                                Icons.send,
                                size: 30.0,
                                color: Colors.deepOrange,
                              ),
                              onPressed: () { setState(() {
                                if (messageInsert.text.isEmpty) {
                                  print("empty message");
                                } else {
                                  setState(() {
                                    messsages.insert(0,
                                        {"data": 1, "message": messageInsert.text});
                                  });
                                  response(messageInsert.text);
                                  messageInsert.clear();
                                }
                              });
                              }),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  )
                ],
              ),
            ),
            ));
  }
  Widget chat(String message, int data) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Bubble(
          radius: Radius.circular(15.0),
          color: data == 0 ? Colors.deepOrange : Colors.orangeAccent,
          elevation: 0.0,
          alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
          nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(
                      data == 0 ? "asset/images/bot.png" : "asset/images/user.png"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                    child: Text(
                      message,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )),
    );
  }
}





