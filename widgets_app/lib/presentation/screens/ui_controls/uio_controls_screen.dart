import 'package:flutter/material.dart';

class UioControlsScreen extends StatelessWidget {
  const UioControlsScreen({super.key});

  static final name = 'uicontrol_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Control'),
      ),
      body: _UIControolsView(),
    );
  }
}

class _UIControolsView extends StatefulWidget {
  const _UIControolsView();

  @override
  State<_UIControolsView> createState() => _UIControolsViewState();
}

enum Trasportations { car, plane, boat, submarine }

class _UIControolsViewState extends State<_UIControolsView> {
  
  bool isDeveloper = true;
  Trasportations slectedTransportation = Trasportations.car;
  bool wantBreakfast = false;
  bool wantlunch = false;
  bool wantDinner = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: Text('Developer mode'),
            subtitle: Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              isDeveloper = value;
              setState(() {});
            }),

        ExpansionTile(
          title: Text('Vehiculo de trasporte'),
          subtitle: Text('${slectedTransportation}'),
          children: [
            RadioListTile(
              title: Text('By car'),
              subtitle: Text('Viajar por carro'),
              value: Trasportations.car,
              groupValue: slectedTransportation,
              onChanged: (value) => setState(() {
                slectedTransportation = Trasportations.car;
              }),
            ),
            RadioListTile(
              title: Text('By Boat'),
              subtitle: Text('Viajar por barco'),
              value: Trasportations.boat,
              groupValue: slectedTransportation,
              onChanged: (value) => setState(() {
                slectedTransportation = Trasportations.boat;
              }),
            ),
            RadioListTile(
              title: Text('By Plan'),
              subtitle: Text('Viajar por avion'),
              value: Trasportations.plane,
              groupValue: slectedTransportation,
              onChanged: (value) => setState(() {
                slectedTransportation = Trasportations.plane;
              }),
            ),
            RadioListTile(
              title: Text('By Submarine'),
              subtitle: Text('Vijar por submarino'),
              value: Trasportations.submarine,
              groupValue: slectedTransportation,
              onChanged: (value) => setState(() {
                slectedTransportation = Trasportations.submarine;
              }),
            ),
          ],
        ),

        CheckboxListTile(
          title: Text('Incluir desayuno'),
          value: wantBreakfast, 
          onChanged: (value) => setState(() {
            wantBreakfast = value!;
          }),
        ),
        CheckboxListTile(
          title: Text('Incluir Comida'),
          value: wantlunch, 
          onChanged: (value) => setState(() {
            wantlunch = value!;
          }),
        ),
        CheckboxListTile(
          title: Text('Incluir Cena'),
          value: wantDinner, 
          onChanged: (value) => setState(() {
            wantDinner = value!;
          }),
        ),
      ],
    );
  }
}
