// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_movil/screens/caratagena_screen.dart';
import 'package:proyecto_movil/screens/llo_lleo_screen.dart';
import 'package:proyecto_movil/screens/san_antonio_screen.dart';
import 'package:proyecto_movil/screens/san_antonio_screen2.dart';

class ListaLugares extends StatelessWidget {
  const ListaLugares({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('San antonio check',style: TextStyle(color: Colors.black, fontSize: 30)),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsetsDirectional.all(5)),
          //San Antonio
          Card(
            child:SizedBox(
              width: double.infinity,
              child: Row(               
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      child: Text('Aquí va una foto'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      alignment: Alignment.centerLeft,
                      child: 
                        TextButton(
                          style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                          onPressed: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SanAntonioScreen2()));
                          },
                          child: Text('Explora San Antonio',style: TextStyle(fontSize: 20),)),
                    ),
                  )
                ],

              ),
            ),
          ),
          //Llo-Lleo
          Card(
            child:SizedBox(
              width: double.infinity,
              child: Row(               
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      child: Text('Aquí va una foto'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      alignment: Alignment.centerLeft,
                      child:
                        TextButton(
                          style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                          onPressed: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LloLleoScreen()));
                          },
                          child: Text('Explora Llolleo',style: TextStyle(fontSize: 20),)),
                    ),
                  )
                ],

              ),
            ),
          ),
          //Cartagena
          Card(
            child:SizedBox(
              width: double.infinity,
              child: Row(               
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      child: Text('Aquí va una foto'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      alignment: Alignment.centerLeft,
                      child:
                        TextButton(
                          style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                          onPressed: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartagenaScreen()));
                          },
                          child: Text('Explora Cartagena',style: TextStyle(fontSize: 20),)),
                    ),
                  )
                ],

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: 
            ElevatedButton(onPressed: (){}, child: Text('Recomiendame algo')),
            
          )
        ],
      ),
    );
  }
}