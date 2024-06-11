import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static final name = 'progress_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProgressIndicators'),),
      body: _ProgressView(),
    );

  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('ProgressIndicator'),
          SizedBox(height: 30,),
          CircularProgressIndicator(strokeWidth: 15,color: Colors.amber, ),
          SizedBox(height: 30,),
          Text('Circlar y linear controlados'),
          _controlledProgressIndicator()
          
        ],
      ),
    );
  }
}

class _controlledProgressIndicator extends StatelessWidget {
  const _controlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(Duration(milliseconds: 300),(value){
        return (value * 2) / 100;
      }).takeWhile((value)=> value <100),
      builder: (context, snapshot) {
        final progressvalue = snapshot.data ??  14.0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(value: progressvalue,strokeWidth: 15,  color: Colors.amber,),
              SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value: 0.5,)
                )
            ],
          ),
          );
      }
    );
  }
}