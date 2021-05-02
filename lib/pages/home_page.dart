import 'package:flutter/material.dart';
import 'package:application_widgets/providers/menu_provider.dart';
import 'package:application_widgets/utils/icono_string_util.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista( context ),
    );
  }
  Widget _lista(BuildContext context){
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder:(context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    final List<Widget> opciones = [];

    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Colors.lightBlueAccent,
        ),
        onTap: (){
          showDialog(
            context: context, 
            builder: (BuildContext context )=> _buildPopUpDialog(context, opt['texto']),
          );
        },
      ) ;
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
 
 Widget _buildPopUpDialog(BuildContext context, String opt){
   return new AlertDialog(
title: const Text ('Me diste click'),
content: new Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text('Hola soy la opcion '+ opt),
  ],
),
  actions:<Widget>[
    // ignore: deprecated_member_use
    new FlatButton(
      onPressed: (){
        Navigator.of(context).pop();
      }, 
      textColor: Theme.of(context).primaryColor,
      child: const Text('Cerrar'),
      ),
  ],
   );
 }
}

