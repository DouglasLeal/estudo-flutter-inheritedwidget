import 'package:estudo_inheritedwidget/data/lista_data.dart';
import 'package:estudo_inheritedwidget/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListaData(child: MaterialApp(home: HomePage(),));
  }
}

