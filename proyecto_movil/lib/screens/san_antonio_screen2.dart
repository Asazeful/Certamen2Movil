// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_movil/providers/locales_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_movil/screens/agregar_local.dart';
import 'package:proyecto_movil/screens/eliminar_local.dart';

import 'agregar_locales.dart';

class SanAntonioScreen2 extends StatefulWidget {
   SanAntonioScreen2({Key? key}) : super(key: key);
  

  @override
  State<SanAntonioScreen2> createState() => _SanAntonioScreen2State();
}

class _SanAntonioScreen2State extends State<SanAntonioScreen2> {

  LocalesProvider locales = new LocalesProvider();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('San Antonio'),
      ),
      body: Column(
        children: [
          Expanded(
            child:FutureBuilder<dynamic>(
                    future: locales.getLocales(),
                    builder:(context,snapshot){
                      if(!snapshot.hasData){
                        return CircularProgressIndicator();
                      }else{
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder:(context,index){
                            //if(snapshot.data[index]['sector_id']==1){
                            return ListTile(
                              leading: Icon(MdiIcons.food),
                              title: Text(snapshot.data[index]['nombre']),
                              subtitle: Text(snapshot.data[index]['descripcion']),
                              trailing: Text('${snapshot.data[index]['recomendaciones']} recomendaciones'),
                            );
                          },
                        );
                      }
                    } ,)
          ),
          ElevatedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AgregarLocalesScreen()));
            }, 
            child: Text('agregar local')),
          ElevatedButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EliminarLocalScreen()));
            }, 
            child: Text('Eliminar local'))
        ],
      ),
    );
  }
}