import 'package:disenos/widget/card_table.dart';
import 'package:flutter/material.dart';

import 'package:disenos/widget/page_title.dart';
import 'package:disenos/widget/custom_bottom_navigation.dart';
import 'package:disenos/widget/background.dart';

class HomeDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          //Home body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titulos
          PageTitle(),

          //Card Table
          CardTable()
        ],
      ),
    );
  }
}
