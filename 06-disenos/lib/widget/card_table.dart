import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SigleCars(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SigleCars(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
      ],
    );
  }
}

class _SigleCars extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SigleCars(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.text,
            style: TextStyle(
              color: this.color,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
