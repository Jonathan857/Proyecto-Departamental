import 'package:application_widgets/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:application_widgets/pages/home_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplication widgets',
      debugShowCheckedModeBanner: false,
      home:  HomePages() ,
            
           );
        }
      }