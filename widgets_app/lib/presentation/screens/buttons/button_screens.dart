import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreens extends StatelessWidget {
  const ButtonScreens({super.key});

  static final  String name = 'buttons_screens'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          context.pop();
        },
        ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width:  double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          // crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 20,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Eleveated Button')),
            const ElevatedButton(onPressed: null, child: Text('Disable Eleveated Button')),
            ElevatedButton.icon(onPressed: (){}, label: Text('Eleveated Icon'),icon: Icon(Icons.reddit),),
            FilledButton(onPressed: (){}, child: Text('Fill button')),
            FilledButton.icon(onPressed: (){}, label: Text('Fill icon button'), icon: Icon(Icons.battery_charging_full_outlined),),
            OutlinedButton(onPressed: (){}, child: Text('Button Outline button')),
            OutlinedButton.icon(onPressed: (){}, label: Text('Button Outline button'), icon: Icon(Icons.search_off),),
            TextButton(onPressed: (){}, child: Text('Text button')),
            TextButton.icon(onPressed: (){}, label: Text('Text Button icon'),icon: Icon(Icons.macro_off),),
            IconButton(onPressed: (){}, icon: Icon(Icons.kayaking)),
            IconButton(onPressed: (){}, icon: Icon(Icons.kayaking), style: ButtonStyle( backgroundColor: WidgetStatePropertyAll(colors.primary),foregroundColor: WidgetStatePropertyAll(Colors.white)),)
          ],
        ),
      ),
    );
  }
}