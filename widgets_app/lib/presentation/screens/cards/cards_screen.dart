import 'package:flutter/material.dart';



const card = <Map<String, dynamic>> [
  {'elevation': 0.0, 'label':'Elevation 0'},
  {'elevation': 1.0, 'label':'Elevation 1'},
  {'elevation': 2.0, 'label':'Elevation 2'},
  {'elevation': 3.0, 'label':'Elevation 3'},
  {'elevation': 4.0, 'label':'Elevation 4'},
  {'elevation': 5.0, 'label':'Elevation 5'},
];



class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
 static final String name = 'cards_screens'; 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: _CardViews(),
    );
  }
}

class _CardViews extends StatelessWidget {
  const _CardViews();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...card.map((card) => _cardType1(label: card['label'], elevation: card['elevation'])),
          ...card.map((card) => _cardType2(label: card['label'], elevation: card['elevation'])),
          ...card.map((card) => _cardType3(label: card['label'], elevation: card['elevation'])),
          ...card.map((card) => _cardType4(label: card['label'], elevation: card['elevation'])),
          SizedBox(height: 50,)
          // ...card.map((card) => _cardType1(label: card['label'], elevation: card['elevation'])),
        ],
      ),
    );
  }
}


class _cardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _cardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert))
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(label),
            )
        ],
      ),
      ),
    );
  }
}


class _cardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _cardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        )
      ),
      elevation: elevation,
      child: Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert))
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - outline'),
            )
        ],
      ),
      ),
    );
  }
}


class _cardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _cardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert))
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('$label - fill'),
            )
        ],
      ),
      ),
    );
  }
}



class _cardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const _cardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      //color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert))
            ),
            Image.network(
              'https://picsum.photos/id/${elevation.toInt()}/600/250',
              fit: BoxFit.cover,
              height: 350,

            ),
            Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(onPressed: (){},icon: Icon(Icons.more_vert)))
            ),
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Text('$label - image'),
            // )
        ],
      ),
    );
  }
}

