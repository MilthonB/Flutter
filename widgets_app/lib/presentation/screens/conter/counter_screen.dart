

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/themeprovider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static final name =  'counter_screen';


  @override
  Widget build(BuildContext context, ref) {
  final counter = ref.watch(counterProvider);
  final themeProvider =  ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen'),
      actions: [
        themeProvider ?
        IconButton(
          onPressed: (){
            ref.read(isDarkModeProvider.notifier).update((state) => !state);
            // if(!ref.read(isDarkModeProvider.notifier).state){
            //   ref.read(isDarkModeProvider.notifier).update((state) => true);
            // }
          }, 
          icon: Icon(Icons.dark_mode)
        )
        :
        IconButton(
          onPressed: (){
            ref.read(isDarkModeProvider.notifier).update((state) => !state);
          }, 
          icon: Icon(Icons.sunny)
        )
      ],
      ),
      body: Center(
        child: Text('valor: ${counter}', style:Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((state)=> state + 1);
        },
        child: Icon(Icons.add),

      ),
    );
  }
}