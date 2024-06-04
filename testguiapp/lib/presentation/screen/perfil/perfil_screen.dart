import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.qr_code_scanner_sharp),
      //   foregroundColor: Color.fromARGB(255, 31, 63, 81),
      //   backgroundColor: Colors.white,
      //   shape: CircleBorder(),
      //   ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Color.fromARGB(255, 31, 63, 81),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 63, 81),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
        title: const Text('Mi Perfil', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: (){}, 
            icon: const Icon(Icons.save_alt),
            )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 70,
                          child: CircleAvatar(
                            
                            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg'),
                            radius: 60,
                          ),
                        ),
                      ),
          
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.edit, color: Colors.black,)
                          ),
                      )                  
                      ]
                    )          
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text('Milthon Borboa', style: GoogleFonts.redHatDisplay( 
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold
           )
          ),
          Text('MilthonBorboa@example.com',
            style: GoogleFonts.redHatDisplay(
              color: Colors.white,

            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Pedidos', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('200', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 18
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text('Entregados', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('102', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 18
                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text('Rechazados', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('780', style: GoogleFonts.redHatDisplay(
                      color: Colors.white,
                      fontSize: 18
                    ),)
                  ],
                )
              ],
            ),
          )
          ,
          SizedBox( height: 20,),
          Expanded(
            child: ListView(
              children: [
          Divider(color: Colors.black12,thickness: 10,),
                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Text('Informacion del usuario',style: GoogleFonts.redHatDisplay(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),),
                ),
               ListTile(
                leading: Icon(Icons.near_me, color: Colors.white, size: 25,),
                title: Text('Nombre del negocio', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Abarrotes Sames', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.manage_accounts_rounded, color: Colors.white, size: 25,),
                title: Text('Nombre del vendedor', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Milthon Borboa', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.directions_rounded, color: Colors.white, size: 25,),
                title: Text('Direccion', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Centro avenida #5345', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.phone, color: Colors.white, size: 25,),
                title: Text('Telefono', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('(6441)-23-23-32', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.calendar_month_rounded, color: Colors.white, size: 25,),
                title: Text('Horarios', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Todos los dias 8:00 - 21:00', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                Divider(color: Colors.black12,thickness: 10,),

                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                 child: Text('Informacion de clientes', style: GoogleFonts.redHatDisplay(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),), 
                ),
                ListTile(
                leading: Icon(Icons.list_rounded, color: Colors.white, size: 25,),
                title: Text('Lista de clientes', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para Ver tus clietes asociados', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.no_accounts_rounded, color: Colors.white, size: 25,),
                title: Text('Lista de clientes no deseados', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para ver los clientes no deseados', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),

                Divider(color: Colors.black12,thickness: 10,),

                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                 child: Text('Redes Sociales ', style: GoogleFonts.redHatDisplay(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),), 
                ),
                ListTile(
                leading: Icon(Icons.public, color: Colors.white, size: 25,),
                title: Text('Pagina persona.', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para eliminar tu cuenta', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.account_box_rounded, color: Colors.white, size: 25,),
                title: Text('Facebook', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para eliminar tu cuenta', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.account_circle_sharp, color: Colors.white, size: 25,),
                title: Text('Instagram', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para eliminar tu cuenta', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.account_circle_sharp, color: Colors.white, size: 25,),
                title: Text('Twitter', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para eliminar tu cuenta', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                Divider(color: Colors.black12,thickness: 10,),
                SizedBox(height: 10,),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                 child: Text('Cuenta ', style: GoogleFonts.redHatDisplay(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),), 
                ),
                ListTile(
                leading: Icon(Icons.policy, color: Colors.white, size: 25,),
                title: Text('Politicas y condiciones', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: Text('Haga click para ver las politicas de condiciones', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                ListTile(
                leading: Icon(Icons.remove_circle, color: Colors.red, size: 25,),
                title: Text('Eliminar cuenta', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                subtitle: ElevatedButton(
                  onPressed: (){}, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                  ),
                  child: Text('Haga click para eliminar tu cuenta', style: GoogleFonts.redHatDisplay(color: Colors.red),),
                  ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
                Divider(color: Colors.black12,thickness: 10,),


              ],
              )
            )
        ],
      ),
    );
  }
}