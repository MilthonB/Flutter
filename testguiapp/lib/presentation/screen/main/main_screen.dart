// ignore_for_file: unnecessary_string_interpolations

import 'dart:ffi';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainSScreen extends StatefulWidget {
  const MainSScreen({super.key});

  @override
  State<MainSScreen> createState() => _MainSScreenState();
}

class _MainSScreenState extends State<MainSScreen> {
  @override
  Widget build(BuildContext context) {
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/perfil');
                          },
                          child: Container(padding: EdgeInsets.all(10), 
                          child: Hero(
                            tag: 'perfil',
                            child: CircleAvatar(
                              foregroundImage: NetworkImage('https://covalto.com/static/78498ccda70933a5f1e3edc3e40d3cbe/34aca/Hero_Mobile_Cuenta_Personas_V1_1_8046e424ea.webp'),
                              //backgroundColor: Colors.black,
                              //child: Text('MB'),
                              foregroundColor: Colors.white,),
                          ),),
                        ),
                        Expanded(child: Container(alignment: Alignment.topLeft, child: Column(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/perfil');
                                },
                                child: Text('Milthon Borboa', style: GoogleFonts.redHatDisplay(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/perfil');
                                },
                                child:Text('Mi perfil>',style: GoogleFonts.redHatDisplay(fontSize: 12,color: Colors.white),) ,
                              )
                              ,

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
      final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol:"\$");
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
                    subtitle: GestureDetector(
                      onTap: () {

                        Navigator.pushNamed(context, '/pedido');

        //                 Scaffold.of(context).showBottomSheet(
                          
        //                   backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          
        //                   //enableDrag: true,
        //                   (context){
        //                     return Container(
                              
        //                       height: MediaQuery.of(context).size.height * .80,
        //                       child: Container(
        //                         //color: Color.fromARGB(255, 31, 63, 81),
        //                         constraints: BoxConstraints.expand(),
        //                         child: Column(
        //                           children: [
        //                             Card(
        //       clipBehavior: Clip.antiAlias,
        //       margin: EdgeInsets.all(10),
        //       elevation: 15,
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Container(
        //             alignment: Alignment.topLeft,
        //             padding: EdgeInsets.only(left: 15,top: 10, right: 15),
        //             child: Row(
        //               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text('Pedido #175 - 25 mins ago', maxLines: 2,style:GoogleFonts.redHatDisplay()),
        //                 SizedBox(width: 40,),
        //                 // IconButton(onPressed: (){}, icon:Icon(Icons.location_on)),
        //                 // // SizedBox(width: 10,),
        //                 IconButton(onPressed: (){}, icon:Icon(Icons.location_on_outlined)),
        //                 IconButton(onPressed: () {},icon:Icon(Icons.more_vert_rounded)),
        //                 // SizedBox(width: 10,),
        //                 CircleAvatar(backgroundImage: NetworkImage('https://img.freepik.com/foto-gratis/retrato-hermoso-mujer-joven-posicion-pared-gris_231208-10760.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1717027200&semt=sph'),)
        //               ],
        //             )
        //             ),
        //           ListTile(
        //             leading: Icon(Icons.inventory_2_outlined),
        //             //trailing: Icon(Icons.location_on),
        //             title: Text('Abarrotes Sam', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),),
        //             subtitle: Text("Tienes un nuevo pedido de Abarrotes sams. Para ver el pedido has click aqui...", style: GoogleFonts.redHatDisplay()),
                    
        //           ),
        //           //  
        //         // Row(
        //         //   children: [
        //         //     Expanded(
        //         //       child: Container(
        //         //         padding: EdgeInsets.only(left: 70,right: 70,bottom: 5),
        //         //         child: ElevatedButton(onPressed: () {},
                        
        //         //         child: Text('Accept'),
        //         //         style: ButtonStyle(
        //         //           backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 23, 61, 90)),
        //         //           foregroundColor: WidgetStatePropertyAll(Colors.white)
        //         //         ),
        //         //         ),
        //         //       ),
        //         //     ),
        //         //   ],
        //         // )
        //         ],
        //       ),
        // ),
        //                             // SizedBox(height: 20,),
        //                             // Text(
        //                             //   'PEDIDO', 
        //                             //   style: GoogleFonts.redHatDisplay(
        //                             //     fontSize: 30,
        //                             //     fontWeight: FontWeight.bold
        //                             //   ),),
        //                               // Container(
        //                               //   decoration: BoxDecoration(
        //                               //     // borderRadius: BorderRadius.only(
        //                               //     //   topLeft: Radius.circular(10),
        //                               //     //   topRight: Radius.circular(10)),
        //                               //     // color: Colors.amber,
        //                               //     color: Color.fromARGB(255, 255, 255, 255),


        //                               //   ),
                                        
        //                               //   alignment: AlignmentDirectional.center,
        //                               //   //padding: EdgeInsets.only(left: 10,right: 10),
        //                               //   padding: EdgeInsets.only(top: 30, bottom: 30),
        //                               //       child: Column(
        //                               //         children: [
        //                               //           Text('PEDIDO #0001 - ABARROTES SAMES SA.DE.CV', style: GoogleFonts.redHatDisplay(
        //                               //             fontWeight: FontWeight.bold,
        //                               //             color: Colors.white
        //                               //           ),),
        //                               //           Text('SABADO, SEPTIEMBRE 20, 2024', style: GoogleFonts.redHatDisplay(
        //                               //                   color: Colors.white
        //                               //           ),),
        //                               //           Text('MILTHON BORBOA', style: GoogleFonts.redHatDisplay(
        //                               //                   color: Colors.white

        //                               //           ),),
        //                               //           Container(
        //                               //             padding: EdgeInsets.only(left: 10),
        //                               //             alignment: AlignmentDirectional.topStart,
        //                               //             child: Text('ARTICULOS : 25',style: GoogleFonts.redHatDisplay(
        //                               //               fontWeight: FontWeight.bold,
        //                               //                   color: Colors.white

        //                               //             ),)
        //                               //             ),
        //                               //         ],
        //                               //       ),
        //                               // ),
                                      


        //                               Divider(
        //                                 color: Colors.black12,
        //                                 thickness: 5,
                                        
        //                               ),
        //                               Expanded(
        //                                 child: ListView(
        //                                   children: [
                                        
                                      
        //                               Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('La Moderna Pasta Para Sopa Macarron 200 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.green
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text('${numberFormat.format(160)}', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold,
        //                                                   fontSize: 18
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Column(
        //                                       children: [
        //                                         Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 15
        //                                         ),),
        //                                         Text('Total')
        //                                       ],
        //                                     ),
        //                                   ],
        //                                 ),

        //                               ),
        //                               Card(
        //                                 clipBehavior: Clip.antiAlias,
        //                                 color: Colors.white,
        //                                 elevation: 3,
        //                                 child: Row(
        //                                   children: [
        //                                     Container(
        //                                       height: 100,
        //                                       width: 100,
        //                                       child: FadeInImage(
        //                                         placeholder: AssetImage('assets/jar-loading.gif'), 
        //                                         image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_611513-MLU75593880487_042024-F.webp'),
        //                                         fit: BoxFit.contain,
                                                
        //                                         //height: 150,
                                              
        //                                       ),
        //                                     ),
        //                                     Expanded(
        //                                       child: Container(
        //                                         padding: EdgeInsets.all(10),
        //                                        child: Column(
        //                                         mainAxisAlignment: MainAxisAlignment.start,
        //                                         crossAxisAlignment: CrossAxisAlignment.start,
        //                                          children: [
        //                                            Text('Salsa Para Pasta Prego Tradicional 680 Gr',
        //                                             style: GoogleFonts.redHatDisplay(
        //                                               fontSize: 15,
        //                                               fontWeight: FontWeight.bold
        //                                             ),
        //                                            ),
        //                                            RichText(
        //                                             text: TextSpan(
        //                                               // text: numberFormat.format(160),
        //                                               style: DefaultTextStyle.of(context).style,
        //                                               children:  <TextSpan>[
        //                                                   TextSpan(text: '${numberFormat.format(200)}', style: GoogleFonts.redHatDisplay(
        //                                                   decoration: TextDecoration.lineThrough
        //                                                   )),
        //                                                 TextSpan(text: '    30%', style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.red
        //                                                 )),
        //                                               ],
        //                                             ),
        //                                           ),
        //                                            Text( numberFormat.format(160), style: GoogleFonts.redHatDisplay(
        //                                                   color: Colors.black,
        //                                                   fontWeight: FontWeight.bold
        //                                                 )),
        //                                            Text('Cantidad : 12', style: GoogleFonts.redHatDisplay(),),
        //                                          ],
        //                                        ),
                                              
        //                                       ),
        //                                     ),
        //                                     Text(numberFormat.format(1920), style: GoogleFonts.redHatDisplay(
        //                                       fontSize: 20
        //                                     ),),
        //                                   ],
        //                                 ),

        //                               ),
        //                               ],
        //                                 )
        //                                 ),
        //                               Container(

        //                                 decoration: BoxDecoration(
        //                                   borderRadius: BorderRadius.only(
        //                                     topLeft: Radius.circular(20),
        //                                     topRight: Radius.circular(20)
        //                                     ),
        //                                 // color: Color.fromARGB(255, 31, 63, 81),
        //                                 color: Color.fromARGB(255, 255, 255, 255),
        //                                 ),

        //                                 padding: EdgeInsets.all(20),
                                        
        //                                 child: Column(
        //                                   crossAxisAlignment: CrossAxisAlignment.start,
        //                                   children: [
                                            
        //                                     Row(
        //                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                                       children: [
        //                                         Text('Productos(25)',style: GoogleFonts.redHatDisplay(
        //                                           color: Color.fromARGB(255, 31, 63, 81)
        //                                         ),),
        //                                         Text(numberFormat.format(3567.45),style: GoogleFonts.redHatDisplay(
        //                                           color: Color.fromARGB(255, 31, 63, 81)
        //                                         ),)
        //                                       ],
        //                                     ),

        //                                     Row(
        //                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                                       children: [
        //                                         Text('Total',style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 20,
        //                                           fontWeight: FontWeight.bold,
        //                                           color: Color.fromARGB(255, 31, 63, 81)
        //                                         ),),
        //                                         Text(numberFormat.format(3567.45),
        //                                         style: GoogleFonts.redHatDisplay(
        //                                           fontSize: 20,
        //                                           fontWeight: FontWeight.bold,
        //                                           color: Color.fromARGB(255, 31, 63, 81)
        //                                         ),),
        //                                       ],
        //                                     ),
                                                
        //                                     Row(
        //                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                                       children: [
        //                                         ElevatedButton(
        //                                           style: ButtonStyle(
        //                                             backgroundColor: WidgetStatePropertyAll(Colors.white),
        //                                             foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81))
        //                                           ),
        //                                           onPressed: (){}, 
        //                                           child: Text('Confirmar pedido', style: GoogleFonts.redHatDisplay(),)
        //                                           ),
        //                                         ElevatedButton(
        //                                           style: ButtonStyle(
        //                                             backgroundColor: WidgetStatePropertyAll(Colors.white),
        //                                             foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81))
        //                                           ),
        //                                           onPressed: (){}, 
        //                                           child: Text('Modificar fecha?', style: GoogleFonts.redHatDisplay(),)
        //                                           )
        //                                       ],
        //                                     )
        //                                   ],
        //                                 ),
        //                               )
        //                           ],
        //                         ),
        //                       ),
        //                       //color: const Color.fromARGB(31, 255, 255, 255),
        //                     );
        //                   }
                          
                          
        //                   );
                      },
                      child: Text("Tienes un nuevo pedido de Abarrotes sams. Para ver el pedido has click aqui...", style: GoogleFonts.redHatDisplay())),
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        
                        
                      }, child: Text('Aceptar',style: TextStyle(color:Color.fromARGB(255, 52, 104, 134)),)),
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
}