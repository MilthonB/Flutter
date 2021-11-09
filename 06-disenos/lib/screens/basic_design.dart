import 'dart:ui';

import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
                'Qui adipisicing ex culpa anim mollit enim aute sint veniam proident Lorem excepteur ipsum ad. Esse enim sint aliquip magna anim ad anim nulla. Ipsum ullamco ut ad nisi in quis voluptate velit eu. Do aute laborum irure officia ipsum aute occaecat ullamco pariatur eiusmod. Reprehenderit amet nisi reprehenderit nisi excepteur aute qui deserunt eiusmod quis laboris laboris Lorem. Excepteur amet exercitation consequat anim tempor aliqua anim reprehenderit esse nostrud. Ex est anim enim ullamco.'),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomeButton(iconData: Icons.phone, texto: 'CALL'),
          CustomeButton(iconData: Icons.room_outlined, texto: 'ROUTE'),
          CustomeButton(iconData: Icons.share, texto: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
  final IconData iconData;
  final String texto;
  const CustomeButton({Key? key, required this.iconData, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.blue,
        ),
        Text(
          texto,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschine lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}
