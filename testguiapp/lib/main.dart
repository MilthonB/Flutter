// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testguiapp/presentation/screen/perfil/perfil_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProvedorApp',
      home: PerfilScreen()
    );
  }


  Widget mainScreen(BuildContext context){
    return Scaffold(
        floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 31, 63, 81), foregroundColor: Colors.white,onPressed: (){},child: Icon(Icons.qr_code_scanner),shape: CircleBorder(),),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomAppBar(
        //   color: Color.fromARGB(255, 31, 63, 81),
        //   shape: CircularNotchedRectangle(),
        //   elevation: 3,
        //   child:Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       IconButton(onPressed: (){}, icon: Icon(Icons.home),color:Colors.white ,),
        //       IconButton(onPressed: (){}, icon: Icon(Icons.account_circle), color: Colors.white,),
        //     ],
        //   ),
          
        //   // selectedItemColor: Color.fromARGB(255, 31, 63, 81),
        //   // unselectedItemColor: Colors.black,
        //   // items: [
        //   //   BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Hola'),
        //   //   BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Hola'),
        //   // ],
        // ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          //width: 250,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                
                duration: Duration(seconds: 1),
                child:Column(
                  children: [
                    // Columna 1
                    Row(
                      children: [
                        Container(padding: EdgeInsets.all(10), child: CircleAvatar(
                          foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg'),
                          //backgroundColor: Colors.black,
                          //child: Text('MB'),
                          foregroundColor: Colors.white,),),
                        Expanded(child: Container(alignment: Alignment.topLeft, child: Column(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text('Milthon Borboa', style: GoogleFonts.redHatDisplay(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                              Text('Mi perfil>',style: TextStyle(fontSize: 12,color: Colors.white),),

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
                        Expanded(child: ElevatedButton( style: ButtonStyle( backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)) )  ,onPressed: (){}, child: Text('Cerrar Sesion' ,style: GoogleFonts.redHatDisplay(color: Color.fromARGB(255, 31, 63, 81)),))),
                      ],
                    ),

                    // Columna 3
                    Row(
                      children: [
                        Expanded(child: Container(   child: Text('Pedidos> 675', style: GoogleFonts.redHatDisplay( fontSize: 13, color: Colors.white),),)),
                        Expanded(child: Container(alignment: Alignment.bottomRight,   child: Text('Entregados> 243', style: GoogleFonts.redHatDisplay(fontSize: 13, color: Colors.white),),)),

                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 63, 81)
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Color.fromARGB(255, 57, 113, 146)),
                onTap: (){},
                title: Text('Inicio',style: GoogleFonts.redHatDisplay(fontSize: 16,color: Color.fromARGB(255, 31, 63, 81))),
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
          actions: [
            IconButton(onPressed: (){} ,icon:Icon(Icons.notifications)),
            SizedBox(width: 25,)
          ],
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 31, 63, 81),
          centerTitle: true,
          title: SearchBar(
            leading: Icon(Icons.search, color: Colors.black45,),
            constraints: BoxConstraints(
              // maxHeight: 1000,
              // maxWidth: 20\
              maxWidth: 230,
              minHeight: 40
            ),
            hintText: 'Buscar pedido',
            autoFocus: false,
            elevation: WidgetStatePropertyAll(3),

          )
          // title: Text( 'Pedidos Todos',style: GoogleFonts.redHatDisplay(fontSize: 20), ),
        ),
        body: Column(
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [
                    0.6,
                    0.7,
                  ],
                  colors: [
                  Color.fromARGB(255, 31, 63, 81),
                  Theme.of(context).scaffoldBackgroundColor
                ])
              ),
              padding: EdgeInsets.only(left: 15, right: 15,),
              // padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Text('Pedidos > 234',style: GoogleFonts.redHatDisplay(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14, fontWeight: FontWeight.bold),),
                  // SizedBox(width: 140,),
                  Text('5 sep 2024', style: GoogleFonts.redHatDisplay(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14, fontWeight: FontWeight.bold)),
                  //SizedBox(width: 10,),
                  //Icon(Icons.date_range_outlined,color: Colors.black38,),
                  ElevatedButton(
                    clipBehavior: Clip.antiAlias,
                    style: ButtonStyle(elevation: WidgetStatePropertyAll(5), 
                    foregroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255),),
                    backgroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 56, 113, 146),)),
                    onPressed: (){}, 
                    child: Row(
                      children: [
                        Text('Filtro'),
                        SizedBox(width: 5,),
                        Icon(Icons.tune),
                      ],
                    ),),

                  
                ],
              )
              ),
              // Text('Lista de pedidos', style: GoogleFonts.redHatDisplay(fontSize: 20),),
            Expanded(child: _list2()),
          ],
        )
        // body: Center(
        //   child: Text('Lista de pedidos',style: GoogleFonts.redHatDisplay(fontSize: 16)),
        // ),
      );
  }
  Widget _list2(){
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              elevation: 15,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 15,top: 10, right: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pedido #175 - 25 mins ago', maxLines: 2,style:GoogleFonts.redHatDisplay()),
                        SizedBox(width: 40,),
                        // IconButton(onPressed: (){}, icon:Icon(Icons.location_on)),
                        // // SizedBox(width: 10,),
                        IconButton(onPressed: (){}, icon:Icon(Icons.location_on_outlined)),
                        IconButton(onPressed: () {},icon:Icon(Icons.more_vert_rounded)),
                        // SizedBox(width: 10,),
                        CircleAvatar(backgroundImage: NetworkImage('https://img.freepik.com/foto-gratis/retrato-hermoso-mujer-joven-posicion-pared-gris_231208-10760.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1717027200&semt=sph'),)
                      ],
                    )
                    ),
                  ListTile(
                    leading: Icon(Icons.inventory_2_outlined),
                    //trailing: Icon(Icons.location_on),
                    title: Text('Abarrotes Sam', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),),
                    subtitle: Text("Tienes un nuevo pedido de Abarrotes sams. Para ver el pedido has click aqui...", style: GoogleFonts.redHatDisplay()),
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text('Aceptar',style: TextStyle(color:Color.fromARGB(255, 52, 104, 134)),)),
                      TextButton(onPressed: (){}, child: Text('Rechazar',style: TextStyle(color: Color.fromARGB(255, 52, 104, 134)),)),
                      SizedBox(width: 10,)
                    ],
                  )
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.only(left: 70,right: 70,bottom: 5),
                //         child: ElevatedButton(onPressed: () {},
                        
                //         child: Text('Accept'),
                //         style: ButtonStyle(
                //           backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 23, 61, 90)),
                //           foregroundColor: WidgetStatePropertyAll(Colors.white)
                //         ),
                //         ),
                //       ),
                //     ),
                //   ],
                // )
                ],
              ),
        );

      },
      );
  }

  Widget _list(){
    return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              elevation: 15,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    //leading: Icon(Icons.abc),
                    title: Text('Title goes here'),
                    subtitle: Text('Secundary line text lorem ipsum was her post'),
                    
                    trailing: Icon(Icons.align_vertical_top_outlined),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton( style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Color.fromARGB(255, 52, 104, 134), ), onPressed: (){}, child: Text('Buy tickket')),
                      SizedBox(width: 8,),
                      TextButton( style: TextButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Color.fromARGB(255, 52, 104, 134)), onPressed: (){}, child: Text('Listen')),
                      SizedBox(width: 8,),
                    ],
                  )
                ],
              )
            //   Row(
            //     children: [
            //       FadeInImage(
            //         placeholder: AssetImage('assets/jar-loading.gif'), 
            //         image: NetworkImage('https://odoocdn.com/web/image/res.partner/1785226/avatar_1920/Super%20Abarrotes%20Mercado?unique=28c0687'),
            //         fadeInDuration: Duration( milliseconds: 200 ),
            // height: 150.0,
            // fit: BoxFit.cover,
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(10.0),
            //         child: Text('data')
            //       ),
                  
            //     ],
            //   ),
            );
          },
        );
  }
}