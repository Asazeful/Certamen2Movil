// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_movil/providers/locales_provider.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_movil/models/locales.dart';

class AgregarLocalScreen extends StatelessWidget {
   AgregarLocalScreen({Key? key}) : super(key: key);

  @override
  TextEditingController nombreController = new TextEditingController();
  TextEditingController descripcionControler = new TextEditingController();
  TextEditingController sectorController = new TextEditingController();
  late Locales _locales;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar un negocio'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Ingrese nombre del local'),
                controller: nombreController,),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Ingrese la drescripcion del local'),
                controller: descripcionControler,),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: '1.San Antonio 2.Llo-lleo 3.Cartagena'),
                keyboardType: TextInputType.number,
                controller: sectorController,),
              
              ElevatedButton(
                onPressed: () async{
                  String nombre = nombreController.text;
                  String descripcion = descripcionControler.text;
                  int sector = sectorController.value as int;
                  int recomendaciones =0;
                  Locales? local = await submitData(nombre,descripcion,sector,recomendaciones);
                    
                  
                }, 
                child: Text('Agregar negocio'))
        
            ],
          ),
        ),
      ),
    );
  }

 Future<Locales?> submitData(String nombre,String descripcion,int sector, int recomendaciones)async {
    const apiURL = 'http://10.0.2.2:8000/api/locales/new';

    var url = Uri.parse(apiURL);
    var response = await http.post((url),
    body:{'nombre' : nombre, 'descripcion' : descripcion, 'sector_id' : sector, 'recomendaciones' : recomendaciones} );
    var data = response.body;
    print(data);

    if (response.statusCode==201){
      String responseString = response.body;
      localesFromJson(responseString);
    } else {
      return null;
    }
  
}
}