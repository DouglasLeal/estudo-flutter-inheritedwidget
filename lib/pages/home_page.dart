import 'package:flutter/material.dart';

import '../data/lista_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listaData = ListaData.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Lista"),),
      body: ListView.builder(
          itemCount: listaData?.palavras.length,
          itemBuilder: (context, index){
            return Text(listaData?.palavras[index] ?? "");
          }
      )
    );
  }
}
