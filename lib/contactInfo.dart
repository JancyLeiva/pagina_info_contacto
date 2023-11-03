import 'package:flutter/material.dart';
import 'package:pagina_info_contacto/icon_telegram.dart';
import 'package:pagina_info_contacto/icon_whatsapp.dart';

class contactInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
        children: [ListTile(
              title: Text('Información de contacto', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
            ),

          Container(
              child: Row(
            //    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),boxShadow: [ 
                                BoxShadow(color: Colors.grey.withOpacity(0.3),spreadRadius: 1,blurRadius: 16),
                    ]),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                  ),
                  
                  Container(margin: EdgeInsets.symmetric(horizontal: 12),), 
                  
                  Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('+89 578-58788', style: TextStyle(fontSize: 16, color: Colors.lightBlue[900]),
                      ),
                      Text('Celular', style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                    ),
                  ),
            
                    Container(margin: EdgeInsets.symmetric(horizontal: 21),),
            
                  Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), boxShadow: [ 
                                        BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 1, blurRadius: 16),
                    ]),
                            child: IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),boxShadow: [ 
                                        BoxShadow(color: Colors.grey.withOpacity(0.3),spreadRadius: 1, blurRadius: 16,),
                      ]),
                            child: IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                          ),
                        ],
                      )
                  ]),
                  ),
              ],),
          ),

          ListTile(
            title: Text('Enviar mensaje a +89 578-58788'),
                        leading: icon_whatsapp(),
                        onTap: () {},
          ),
          ListTile(
            title: Text('Llamar a +89 578-58788'),
                        leading: icon_whatsapp(),
                        onTap: () {},
          ),
          ListTile(
            title: Text('Videollamar a +89 578-58788'),
                        leading: icon_whatsapp(),
                        onTap: () {},
          ),
          ListTile(
            title: Text('Mensaje al +89 578-58788'),
                        leading: icon_telegram(),
                        onTap: () {},
          ),
          ListTile(
            title: Text('Llamada de voz al +89 578-58788'),
                        leading: icon_telegram(),
                        onTap: () {},
          ),
          ListTile(
            title: Text('Videollamada al +89 578-58788'),
                      //  leading: Image.asset('assets/telegram.png'),
                        leading: icon_telegram(),
                        onTap: () {},
          ),
        ],
      );
  }
}