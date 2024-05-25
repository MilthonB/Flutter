import 'package:flutter/material.dart';

class MessagesFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;
  const MessagesFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {



    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color:Colors.transparent),
      borderRadius:  BorderRadius.circular(40)
    );


    return TextFormField(
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: InputDecoration(
        hintText: 'Ingresa tu mensaje',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          onPressed: (){
            final textvalue = textController.value.text;
            textController.clear();
            onValue(textvalue); 
          }, 
          icon: Icon(Icons.send),
          )
      ),
      onFieldSubmitted: (value){
        textController.clear();
        focusNode.requestFocus();
        onValue(value); 
      },
    );
  }
}