class Conversation{
  static List<String> _conversations = [
    'sample text',
    'other sample text',
    'sample question?',
    'sample answer'
  ];

  static List getChat(){
    _conversations.shuffle();
    return _conversations;
  }
}