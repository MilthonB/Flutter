import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProvedorApp',
      home: Scaffold(
        drawer: Drawer(
          //width: 250,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child:Column(
                  children: [

                    // Columna 1
                    Row(
                      children: [
                        Container(padding: EdgeInsets.all(10), child: CircleAvatar(backgroundColor: Colors.black,child: Text('MB'),foregroundColor: Colors.white,),),
                        Expanded(child: Container(alignment: Alignment.topLeft, child: Column(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text('Milthon Borboa', style: GoogleFonts.redHatDisplay(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                              Text('Mi perfil>', style: TextStyle(fontSize: 12),),

                                ],

                              ),
                            )
                          ],
                        ),)),
                      ],
                    ),
                    // Columna 2

                    Row(
                      children: [
                        Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Cerrar Sesion', style: GoogleFonts.redHatDisplay(),))),
                      ],
                    ),

                    // Columna 3
                    Row(
                      children: [
                        Expanded(child: Container(   child: Text('Pedidos: 123', style: GoogleFonts.redHatDisplay( fontSize: 13),),)),
                        Expanded(child: Container(alignment: Alignment.bottomRight,   child: Text('Entregados: 123', style: GoogleFonts.redHatDisplay(fontSize: 13),),)),

                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                onTap: (){},
                title: Text('Inicio',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.search),
                onTap: (){},
                title: Text('Buscar',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                onTap: (){},
                title: Text('Notificaciones',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_rounded),
                onTap: (){},
                title: Text('Mis Pedidos',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),ListTile(
                leading: Icon(Icons.favorite),
                onTap: (){},
                title: Text('Favoritos',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.label),
                onTap: (){},
                title: Text('Ofertas',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.star_purple500_sharp),
                onTap: (){},
                title: Text('Subscripciones',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.play_circle_filled),
                onTap: (){},
                title: Text('Publicidad',style: GoogleFonts.redHatDisplay(fontSize: 16)),
                trailing: Icon(Icons.label_important, color: Colors.green,),
              ),
              ListTile(
                leading: Icon(Icons.history_toggle_off),
                onTap: (){},
                title: Text('Historial',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                onTap: (){},
                title: Text('Mi cuenta',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
              ListTile(
                leading: Icon(Icons.help_rounded),
                onTap: (){},
                title: Text('Ayuda',style: GoogleFonts.redHatDisplay(fontSize: 16)),
              ),
            ],

            ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text( 'Pedidos Todos',style: GoogleFonts.redHatDisplay(fontSize: 20), ),
        ),
        body: Center(
          child: Text('Lista de pedidos',style: GoogleFonts.redHatDisplay(fontSize: 16)),
        ),
      ),
    );
  }
}