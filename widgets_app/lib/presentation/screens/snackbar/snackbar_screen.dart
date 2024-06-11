import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static final name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final conten = Text('Hola mundo');
    final snack = SnackBar(
      content: conten,
      action: SnackBarAction(label: 'Ok', onPressed: (){}),
      duration: const Duration(seconds: 2), 
      );
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  Text('Ea pariatur consectetur velit anim ea incididunt enim mollit elit anim ullamco eiusmod irure.')
                ]
                );
            }, child: Text('Licencias usadas')),
            FilledButton.tonal(onPressed: (){
                openDialog(context);
            }, child: Text('Mostrar Dialogo'))
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: (){
          showCustomSnackbar(context);
        },
        ),
    );
  }

  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, builder: (context) {
      return AlertDialog(
        title: Text('Estas Seguro'),
        content: Text('Do nostrud duis Lorem ipsum reprehenderit cupidatat deserunt tempor labore adipisicing labore dolore. Dolore esse do laborum enim commodo magna culpa dolor magna. Commodo minim ea esse veniam amet eu fugiat excepteur ullamco sint duis anim et fugiat. Nostrud magna laborum ex qui. Ipsum et sit nostrud deserunt veniam enim. Ea pariatur ullamco minim est culpa irure aliquip velit magna voluptate elit duis non commodo. Dolor cillum incididunt mollit do cillum velit adipisicing in.'),
        
        actions: [
          TextButton(onPressed: (){
            context.pop();
          }, child: Text('Cancel')),
          FilledButton(onPressed: (){

          }, child: Text('Aceptar')),
        ],
      );
    },);
  }



}