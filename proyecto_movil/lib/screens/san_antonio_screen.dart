// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:proyecto_movil/providers/locales_provider.dart';

class SanAntonioScreen extends StatelessWidget {
   SanAntonioScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('San Antonio'),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Card(child: Column(
            children: [
              Text('San Antonio',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
              Text('Aquí va una foto'),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: 
                Text('San Antonio es considerado como ciudad desde el 14 de enero de 1850 decreto del Presidente don Manuel Bulnes. El 6 de mayo de 1894 cuando su I. Municipalidad celebró su primera sesión y eligió como su primer alcalde a don Segundo Plaza Poblete. ',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 19),),),
              )
            ],
          ),),
          //Seccion "para comer" 
          Divider(thickness: 1,),
          Padding(padding: EdgeInsets.only(top:5)),
          Text('Para comer',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
          SizedBox(
            width: 300,
            height: 200,
            child: GridView.count(
              primary: true,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Card(child:
                  
                   Column(children: [
                    Text('Nombre Negocio'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],) ),
                Card(child:
                  Column(children: [
                    Text('Nombre Negocio'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],)),
                Card(child:
                  Column(children: [
                    Text('Nombre Negocio'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],)),
              ],),
          ),
          //Seccion "para ver"
          Divider(thickness: 1,),
          Padding(padding: EdgeInsets.only(top:5)),
          Text('Para Ver',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
          SizedBox(
            width: 300,
            height: 200,
            child: GridView.count(
              primary: true,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Card(child:
                  Column(children: [
                    Text('Nombre Lugar'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],)),
                Card(child:
                  Column(children: [
                    Text('Nombre Lugar'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],)),
                Card(child:
                  Column(children: [
                    Text('Nombre Lugar'),
                    Text('Aquí va una foto'),
                    SizedBox(
                      child: Row(
                        children: [
                          Text('ubicacioon'),
                          Text('Recomendaciones')
                      ],),
                    )
                  ],)),
              ],),
          )
        ],
      ),
    );
  }
}