

import 'package:flutter/material.dart';

class FavoritdView extends StatelessWidget {
  const FavoritdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('Favoiritoes View'),),
      body: Center(child: const Text('Favoritos'),),
    );
  }
}