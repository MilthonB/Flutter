import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilClienteScreen extends StatelessWidget {
  const PerfilClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 63, 81),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        actions: [
          IconButton(onPressed: (){
            showDialog(
              context: context, 
              builder: (context) {
                return  AlertDialog(
                  title: Text('Solicitud ', style: GoogleFonts.redHatDisplay(),),
                  content: Text('Mandar Solicitud a cliente', style: GoogleFonts.redHatDisplay(),),
                
                );
              },
              );
          }, icon: Icon(Icons.add_business_sharp))
        ],
        title: Text('Cliente Perfil', style: GoogleFonts.redHatDisplay(),),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Aqui va el perfil del suario', style: GoogleFonts.redHatDisplay(),)
      ),
    );
  }
}