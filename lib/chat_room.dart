import 'package:flutter/material.dart';

import 'fake_backend/conversation.dart';

class ChatRoom extends StatelessWidget{
  List<String> convo = Conversation.getChat();
  final _formKey = GlobalKey<FormState>();
  final _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        children: [
          ListView.builder(
            itemCount: convo.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(convo[index]);
            },
          ),
        ],
      )
    );
  }

  Widget messagingBar() {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                  convo.add(_textController.value.toString());
              }
            },
          ),
          TextFormField(
            controller: _textController,
            validator: (value) {
              return null;
            },
          )
        ],
      ),
    );
  }

}