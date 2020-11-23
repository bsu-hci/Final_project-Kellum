class Conversation{
  static List<String> _conversations = [
    'sample text',
    'other sampel text',
    'sample question?',
    'sample answer'
  ];

  static List getChat(){
    _conversations.shuffle();
    return _conversations;
  }
}