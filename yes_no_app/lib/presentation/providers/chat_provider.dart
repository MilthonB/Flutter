
import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helper/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{


  final ScrollController chatScrolController = ScrollController(); 
  final yesornotaswer =  GetYesNoAnswer();
  List<Message> messageList = [
    Message(
      txt: 'Hola sabritas', 
      fromWho: FromWho.me),
      Message(txt: 'Ya regresaste del trabajo', fromWho: FromWho.me)
  ];

  Future<void> sendMessage( String text ) async{
    // TODO: Implement method
    if(text.isEmpty) return;
    final newMessage =  Message(txt: text, fromWho: FromWho.me);

    messageList.add(newMessage);    

    if(text.endsWith('?')){
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
    
  }


  Future<void> moveScrollToBottom() async{
    
    await Future.delayed(Duration(milliseconds: 100));
    chatScrolController.animateTo(
      chatScrolController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut
      );
  }

  Future<void> herReply() async {

    final herMessage = await yesornotaswer.getAnswer();

    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();

  }


}