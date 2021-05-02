import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MunuProvider {
List<dynamic> opciones =[];
    _MunuProvider(){
//cargarDta();
}
  Future <List<dynamic>> cargarData()async{

  final resp = await rootBundle.loadString('data/menu_opts.json');
   Map dataMap = jsonDecode(resp);

   print(dataMap['rutas']);
   opciones = dataMap['rutas'];
   return opciones ;
 
 
 }
}
final menuProvider = new _MunuProvider();