import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
      final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol:"\$");
      bool isCheck = false;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/mapa');
            }, 
            icon: Icon(Icons.location_on_outlined) 
            )
        ],
        backgroundColor: Color.fromARGB(255, 31, 63, 81),
        foregroundColor: Colors.white,
        title: Text('Pedido #2345', style: GoogleFonts.redHatDisplay(
          fontSize: 20,
          color: Colors.white
        ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back_ios_new_rounded)
          ),
      ),
      body: 
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.black38),
                      //color: Color.fromARGB(225, 118, 20, 20),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                    ),
                    child: Column(
                      children: [
                        Text('Abarrotes Sames',style: GoogleFonts.redHatDisplay(
                          color: Colors.black,
                          fontSize: 20
                        ),),
                        Text('Pedido #2345 - Milthon Borboa',style: GoogleFonts.redHatDisplay(
                          color: Color.fromARGB(255, 31, 63, 81),
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                        // Text('', style: GoogleFonts.redHatDisplay(
                        //   color: Colors.white,
                        //   fontSize: 18
                        // ),),
                        Text('Sabado, Septiembre 19,2024', style: GoogleFonts.redHatDisplay(
                          color: Colors.black,
                          fontSize: 15
                        ),),
                        
                      ],
                    )
                    )
                  ),
              ],
            ),
            // Divider(
            //   thickness: 20,
            // ),
            
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 25,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(33, 49, 99, 128),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text('Articulos: 25', style: GoogleFonts.redHatDisplay(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 31, 63, 81)
                            ),),
                          ),                          
                          Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(5),
                            // color: Color.fromARGB(59, 31, 63, 81),
                            // ),
                            padding: EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: (){
                                showDatePicker(
                                  context: context, 
                                  currentDate: DateTime.now(),
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(), 
                                  lastDate: DateTime(2050)
                                  );
                              },
                              child: Text('21 Septiembre 2024', style: GoogleFonts.redHatDisplay(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 31, 63, 81)
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //Text('data'),
                  
                ],
              ),
            ),

          // ElevatedButton(onPressed: (){}, child: Text('Da click para dar Check')),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                color: Color.fromARGB(106, 31, 63, 81),
                // thickness: 2,
                
              ),
            ),
            
            Expanded(child: _listProductos(10)),

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 31, 63, 81),
                  style: BorderStyle.solid,
                  width: 3
                  ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Color.fromARGB(255, 31, 63, 81)
              ),
              padding: EdgeInsets.only(left: 40,right: 40,top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Productos: 25', style: GoogleFonts.redHatDisplay(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white

                          ),),
                          SizedBox(height: 5,),
                          Text('Ahorro', style: GoogleFonts.redHatDisplay(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 234, 144, 138)
                          ),),
                          SizedBox(height: 15,),
                          Text('Total', style: GoogleFonts.redHatDisplay(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white

                          ),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(numberFormat.format(5000), style: GoogleFonts.redHatDisplay(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white

                          ),),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(106, 244, 67, 54)
                            ),
                            child: Text(numberFormat.format(500), style: GoogleFonts.redHatDisplay(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            

                            ),),
                          ),
                          SizedBox(height: 15,),

                          Text(numberFormat.format(4500), style: GoogleFonts.redHatDisplay(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          
                        ],
                      ),
                      
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height *0.9,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                                SizedBox(height: 20,),

                                    Text('Mensaje', style: GoogleFonts.redHatDisplay(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                SizedBox(height: 10,),
                                                Container(
                                                  padding: EdgeInsets.only(left: 40,right: 40),
                                                  child: TextFormField(
                                                    
                                                    maxLength: 30,
                                                    maxLines: 5,
                                                    cursorColor: Colors.black,
                                                    decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                      borderSide: BorderSide.none    
                                                      ),
                                                      hintText: 'Escribir...',
                                                      fillColor: Color.fromARGB(35, 109, 160, 249),
                                                      filled: true
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(child: Container(
                                                      padding: EdgeInsets.only(left: 20,right: 20),
                                                      child: ElevatedButton(
                                                        onPressed: (){}, 
                                                        child: Text('Enviar'),
                                                        style: ButtonStyle(
                                                          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81)),
                                                          foregroundColor: WidgetStatePropertyAll(Colors.white)
                                                        ),
                                                        ))),
                                                  ],
                                                ),
                                                Divider(),
                                                Text('Productos con comentarios',style: GoogleFonts.redHatDisplay(
                                                   fontSize: 18
                                                ),),
                                                
                                    Expanded(child: _listProductos(5))                                                
                                    // Expanded(
                                    //   child: ListView.builder(
                                    //     itemCount: 10,
                                    //     itemBuilder: (context, index) {
                                    //       return Padding(
                                    //         padding: const EdgeInsets.all(18.0),
                                    //         child: Column(
                                    //           children: [
                                                
                                    //           ],
                                    //         ),
                                    //       );
                                    //     },
                                    //     ),
                                    // ),
                                  ],
                                ),
                              );
                            },
                          );
                          // showModalBottomSheet(
                          //   isScrollControlled: true,
                          //   isDismissible: false,
                          //   context: context, 
                          //   builder: (context) {
                          //     return Padding(
                          //       padding: EdgeInsets.only(
                          //         bottom: MediaQuery.of(context).viewInsets.bottom),
                          //       child: Container(
                          //         padding: EdgeInsets.only(left: 10,right: 10),
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          //           color: Color.fromARGB(255, 255, 255, 255),
                          //         ),
                          //         height: 400,
                          //         child: Center(
                          //           child: Column(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             mainAxisSize: MainAxisSize.min,
                          //             children: <Widget>[
                          //               Text('Enviar mensaje al cliente', style: GoogleFonts.redHatDisplay(),),
                          //               TextFormField(
                          //                 maxLines: 10,
                          //                 cursorColor: Colors.black,
                          //                 style: TextStyle(
                          //                   color: Colors.amber
                          //                 ),
                          //                 decoration: InputDecoration(
                          //                   filled: true,
                          //                   fillColor: const Color.fromARGB(255, 191, 223, 249),
                          //                   border: OutlineInputBorder(
                          //                     borderRadius: BorderRadius.circular(50),
                          //                     borderSide: BorderSide.none,

                          //                   )
                          //                 ),
                          //               ),
                          //               // TextField(
                                          
                          //               //   maxLines: 8,
                          //               //   decoration: InputDecoration(
                                            
                          //               //     border: OutlineInputBorder(),
                          //               //     labelText: 'Mensaje al vendedor'
                          //               //   ),
                          //               // ),
                          //               ElevatedButton(
                          //                 child: const Text('Enviar...'),
                          //                 onPressed: () => Navigator.pop(context),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // );
                        }, 
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81)),
                        ),
                        child: Text('Aceptar Pedido') 
                        ),
                        SizedBox(width: 20,),
                        ElevatedButton(
                        onPressed: (){
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Entregado',style: GoogleFonts.redHatDisplay(),),
                                content:Text('Tu pedido fue entregado con exito',style: GoogleFonts.redHatDisplay()), 
                                // Column(
                                //   children: [
                                //     Image(image: NetworkImage('https://img.freepik.com/vector-gratis/ilustracion-concepto-ok_114360-2060.jpg?t=st=1717873462~exp=1717877062~hmac=3be8cc393d7f8652b3ca816ec50781ed2209cb23f74e075c203ad98921ea798d&w=740')),
                                //     Text('Tu pedido fue entregado con exito',style: GoogleFonts.redHatDisplay()),
                                //   ],
                                // ),
                                actions: [
                                  TextButton(
                                    onPressed: (){}, 
                                    child: Text('Finalizar',style: GoogleFonts.redHatDisplay())
                                    )
                                ],
                              );
                            },
                            );
                        }, 
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81)),
                        ),
                        child: Text('Entregado') 
                        )
                    ],
                  ),
                  SizedBox(height: 20,)

                ],
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         padding: EdgeInsets.all(15),
            //         margin: EdgeInsets.all(10),
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(93, 255, 255, 255),
            //           //borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            //         ),
            //         child: Row(
            //           children: [
            //             Container(
                          
            //               height: 60,
            //               width: 60,
            //               child: FadeInImage(
            //                 placeholder: AssetImage('assets/jar-loading.gif'), 
            //                 image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
            //                 fit: BoxFit.contain,
                            
            //                 //height: 150,
                          
            //               ),
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Expanded(
            //               child: Container(
                            
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                       Text('La Moderna Pasta Para Sopa Macarron 200 Gr',style: GoogleFonts.redHatDisplay(
            //                         color: Colors.black54,
            //                         fontSize: 12
            //                       ),),
            //                       Text('Agregar Comentario',style: GoogleFonts.redHatDisplay(
            //                         color: Colors.black54,
            //                         fontSize: 13
            //                       ),),
            //                       SizedBox(height: 10,),
            //                       Text('Cantidad 25',style: GoogleFonts.redHatDisplay(
            //                         color: Colors.black54,
            //                         fontSize: 13
            //                       ),),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             Column(
            //                 crossAxisAlignment: CrossAxisAlignment.end,
            //                 children: [
            //                   Text(numberFormat.format(31), style: GoogleFonts.redHatDisplay(
            //                     color: Colors.green,
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.bold
            //                   ),),
            //                   Text(numberFormat.format(46.50),style: GoogleFonts.redHatDisplay(
            //                     color: Colors.black26,
            //                     decoration: TextDecoration.lineThrough
            //                   ), ),
            //                   Text('Ahorro',style: GoogleFonts.redHatDisplay(
            //                     color: Colors.green,
            //                     fontWeight: FontWeight.bold
            //                   ),),
            //                   Text('15.50', style: GoogleFonts.redHatDisplay(
            //                     color: Colors.green,
            //                   ),),
            //                 ],
            //               ),

            //           ],
            //         ),
            //       )),
                  
            //   ],
            // ),
            // ElevatedButton(onPressed: (){}, child: Text('Da click para dar Check')),
            // Container(
            //   padding: EdgeInsets.only(left: 20,right: 20),
            //   child: Divider(
            //     color: Color.fromARGB(106, 31, 63, 81),
            //     //thickness: 1,
                
            //   ),
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         margin: EdgeInsets.only(left: 70,right: 70),
            //         //color: Colors.amber,
            //         child: ElevatedButton(
                      
            //           onPressed: (){}, 
            //           child: Text('Da click para dar Check'),
            //           style: ButtonStyle(
            //             backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81)),
            //             foregroundColor: WidgetStatePropertyAll(Colors.white)
            //           ),
            //           ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        
        )
    );
  }


  Widget _listProductos(int count){
    bool isCheck = false;
    final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol:"\$");

    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(93, 255, 255, 255),
                      //borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              
                              height: 60,
                              width: 60,
                              child: FadeInImage(
                                placeholder: AssetImage('assets/jar-loading.gif'), 
                                image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_2X_940859-MLU74859064780_032024-F.webp'),
                                fit: BoxFit.contain,
                                
                                //height: 150,
                              
                              ),
                            ),
                            Checkbox(
                              // splashRadius: 20,
                              // side: BorderSide(
                              //   color: Colors.black,
                              //   width: 10,
                              //   strokeAlign: 10,
                              //   style: BorderStyle.solid
                              // ),
                              value: isCheck, 
                              activeColor: Colors.black,
                              fillColor: WidgetStateProperty.resolveWith((state){
                                if( state.contains(WidgetState.selected) ){
                                  return const Color.fromARGB(255, 0, 0, 0);
                                }
                              }),
                              // hoverColor: Colors.green,
                              checkColor: Colors.white,
                              // focusColor: Colors.blue,
                              //overlayColor: WidgetStatePropertyAll(Color.fromARGB(90, 31, 63, 81)),
                              onChanged: (value){
                                setState(() {
                                  isCheck = true;
                                });
                              }
                              )
                            // CheckboxListTile(
                            //   value: isCheck, 
                            //   onChanged: (value) {
                            //     setState(() {
                            //       isCheck = value!;
                            //     });
                            //   },
                            //   )
                            // Text('25 pz', style: GoogleFonts.redHatDisplay(),)
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Text('La Moderna Pasta Para Sopa Macarron 200 Gr',style: GoogleFonts.redHatDisplay(
                                    color: Colors.black,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 12
                                  ),),
                                  Text('Precio: ' + numberFormat.format(31),style: GoogleFonts.redHatDisplay(
                                    color: Color.fromARGB(255, 31, 63, 81),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13
                                  ),),
                                  GestureDetector(
                                    onTap: () {
                                      _bottoSheetAgregarComentario();
                                    },
                                    child: Text('Agregar Comentario',style: GoogleFonts.redHatDisplay(
                                      color: Color.fromARGB(255, 178, 128, 81),
                                      fontSize: 13
                                    ),),
                                  ),
                                  SizedBox(height: 10,),
                                  
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: const Color.fromARGB(59, 244, 67, 54)
                                    ),
                                    child: Text('Cant: 25',style: GoogleFonts.redHatDisplay(
                                      color: Color.fromARGB(255, 51, 102, 131),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13
                                    ),),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(numberFormat.format(31), style: GoogleFonts.redHatDisplay(
                                color: Color.fromARGB(255, 51, 102, 131),
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                              Text(numberFormat.format(46.50),style: GoogleFonts.redHatDisplay(
                                color: Colors.black26,
                                decoration: TextDecoration.lineThrough
                              ), ),
                              Text('Ahorro',style: GoogleFonts.redHatDisplay(
                                color: Color.fromARGB(255, 51, 102, 131),
                                fontWeight: FontWeight.bold
                              ),),
                              Text('15.50', style: GoogleFonts.redHatDisplay(
                                color: Color.fromARGB(255, 51, 102, 131),
                              ),),
                            ],
                          ),
                      ],
                    ),
                  ),
                  ),
              ],
            );
      },
      );
  }

  Future _bottoSheetAgregarComentario(){
    return showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height *0.9,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                                SizedBox(height: 20,),

                                    Text('Mensaje', style: GoogleFonts.redHatDisplay(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                SizedBox(height: 10,),
                                                Container(
                                                  padding: EdgeInsets.only(left: 40,right: 40),
                                                  child: TextFormField(
                                                    
                                                    maxLength: 30,
                                                    maxLines: 5,
                                                    cursorColor: Colors.black,
                                                    decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(20),
                                                      borderSide: BorderSide.none    
                                                      ),
                                                      hintText: 'Escribir...',
                                                      fillColor: Color.fromARGB(35, 109, 160, 249),
                                                      filled: true
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(child: Container(
                                                      padding: EdgeInsets.only(left: 20,right: 20),
                                                      child: ElevatedButton(
                                                        onPressed: (){}, 
                                                        child: Text('Enviar'),
                                                        style: ButtonStyle(
                                                          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 31, 63, 81)),
                                                          foregroundColor: WidgetStatePropertyAll(Colors.white)
                                                        ),
                                                        ))),
                                                  ],
                                                ),
                                                Divider(),
                                                Text('Productos con comentarios',style: GoogleFonts.redHatDisplay(
                                                   fontSize: 18
                                                ),),
                                                
                                    Expanded(child: _listProductos(1))                                                
                                    // Expanded(
                                    //   child: ListView.builder(
                                    //     itemCount: 10,
                                    //     itemBuilder: (context, index) {
                                    //       return Padding(
                                    //         padding: const EdgeInsets.all(18.0),
                                    //         child: Column(
                                    //           children: [
                                                
                                    //           ],
                                    //         ),
                                    //       );
                                    //     },
                                    //     ),
                                    // ),
                                  ],
                                ),
                              );
                            },
                          );
  }

}