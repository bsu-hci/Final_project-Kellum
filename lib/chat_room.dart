import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'fake_backend/conversation.dart';

class ChatRoom extends StatefulWidget{
  @override
  _ChatRoom createState() => new _ChatRoom();

}

class _ChatRoom extends State<ChatRoom>{
  List<String> convo = Conversation.getChat();
  final _formKey = GlobalKey<FormState>();
  final _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(8.0),
          itemCount: convo.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(convo[index]);
          },
        ),
        messagingBar()
      ],
    ));
  }

  Widget messagingBar() {
    return Column(
      children: [
        Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                controller: _textController,
                validator: (value) {
                  return null;
                },
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    convo.add(_textController.text);
                    _textController.clear();
                    setState(() {
                      convo = convo;
                    });
                  }
                },
              ),
            ])),
      ],
    );
  }
}
