import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];

  int get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes widgets'),
      ),
      body: ListView(children: _crearItems(context)),
    );
  }

  List<Widget> _crearItems(BuildContext context ) {
    List<Widget> lista = new List<Widget>();
 
    for (String opt in opciones) {
      final tempWidget = ListTile(
        
        title: Text(opt ),
       
        subtitle: Text('Subtitulo '+opt),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.keyboard_arrow_right_rounded),
        
        onTap: (){
         
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => MyApp(index)));
      
              },
            );
            
            lista..add(tempWidget)..add(Divider());
            // lista.add(tempWidget);
            // lista.add(Divider());
          }
          return lista;
        }
      
        MyApp(int index) {}

}