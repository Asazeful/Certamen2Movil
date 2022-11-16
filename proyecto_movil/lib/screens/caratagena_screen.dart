import 'package:flutter/material.dart';

class CartagenaScreen extends StatelessWidget {
  const CartagenaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cartagena'),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Card(child: Column(
            children: [
              Text('Cartagena',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
              Text('Aquí va una foto'),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: 
                Text('Historia de Cartagena'),),
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