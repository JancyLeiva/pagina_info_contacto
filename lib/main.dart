import 'package:flutter/material.dart';
import 'package:pagina_info_contacto/barra1.dart';
import 'package:pagina_info_contacto/contactInfo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contactos",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, color: Colors.black45,)),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 60,
                  child: Text('R', style: const TextStyle(fontSize: 50)),
                  ),
                const SizedBox(height: 10,),
                Text("Raquel", style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 20),

                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1.0, color: Colors.black12), left: BorderSide.none, right: BorderSide.none, bottom: BorderSide(width: 1.0, color: Colors.black12))),
                      child: barra1(),
                    ),    

                const SizedBox(height: 15),
               
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Card(
                        color: Colors.grey[350],
                          child:  contactInfo(),
                      ),
                    ),
                ],
              ),
            ),
        ),  
       ),
    );
  }
}