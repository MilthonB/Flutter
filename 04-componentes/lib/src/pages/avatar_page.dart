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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR89yHDfInnyDlGHOY13p0IfLS8LNnCZ5nVVaf8AAkBz0RSfqNp6Nbdpu4fZ7cXcTrHvSM&usqp=CAU'),
          )
        ],
      ),
    );
  }
}
