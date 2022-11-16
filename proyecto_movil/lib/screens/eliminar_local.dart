import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EliminarLocalScreen extends StatefulWidget {
  const EliminarLocalScreen({Key? key}) : super(key: key);

  @override
  State<EliminarLocalScreen> createState() => _EliminarLocalScreenState();
}

class _EliminarLocalScreenState extends State<EliminarLocalScreen> {
  TextEditingController idController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eliminar local'),
      ),
      body:Column(
        children: [
          TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Ingrese el Id del local'),
                controller: idController,),
          ElevatedButton(onPressed: (){
            deleteLocal(idController);
          }, child: Text('Eliminar'))
        ],
      ),
    );
  }
  void deleteLocal(dynamic id)async{
    var url = Uri.parse('http://10.0.2.2:8000/api/locales/delete/${id}');
    var response = await http.delete(url);
    if (response.statusCode==200){
      print('usuario eliminado');
    }else{
      print('mal ahi');
    }
  }
}