import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MB'),
              backgroundColor: Colors.blueGrey,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudlE5yqrFt6LiOVMYJDmkmrNWhpaf2oExv0OoDdOXphQp8io_5zaHr3xnxDB3RoCTxkc&usqp=CAU'),
          )
        ],
      ),
      body: Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudlE5yqrFt6LiOVMYJDmkmrNWhpaf2oExv0OoDdOXphQp8io_5zaHr3xnxDB3RoCTxkc&usqp=CAU'),
        placeholder: AssetImage('assets/jar-loading.gif'),
      )),
    );
  }
}
