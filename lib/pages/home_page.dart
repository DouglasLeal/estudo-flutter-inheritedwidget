import 'package:estudo_inheritedwidget/pages/form_page.dart';
import 'package:flutter/material.dart';

import '../data/lista_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var listaData = ListaData.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Lista"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage())).then((value){
          setState(() {
            
          });
        });

      }, child: Icon(Icons.add),),
      body: ListView.builder(
          itemCount: listaData?.palavras.length,
          itemBuilder: (context, index){
            return Text(listaData?.palavras[index] ?? "");
          }
      )
    );
  }
}
