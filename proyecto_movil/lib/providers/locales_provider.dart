import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proyecto_movil/models/locales.dart';



class LocalesProvider {
  

  Future<List<dynamic>> getLocales() async {
    const apiURL = 'http://10.0.2.2:8000/api/locales/list';
    var url = Uri.parse(apiURL);
    
    var respuesta = await http.get(url);

    
    if (respuesta.statusCode == 200) {
      
      return json.decode(respuesta.body);
      
    } else
    
      return [];
  }

  Future<dynamic> postLocales(dynamic object)async{
    const apiURL = 'http://10.0.2.2:8000/api/locales/new';

    var url = Uri.parse(apiURL);
    var _payload =jsonEncode(object);
    
    var respuesta = await http.post(url, body: _payload);

    
    if (respuesta.statusCode == 201) {
      
      return json.decode(respuesta.body);
      
    } else
    
      return [];


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
