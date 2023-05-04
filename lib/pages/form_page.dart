import 'package:flutter/material.dart';

import '../data/lista_data.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var listaData = ListaData.of(context);

    return Scaffold(
      appBar: AppBar(title: Text("Formulário"),),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(label: Text("Nova palavra")),
          ),
          ElevatedButton(onPressed: (){
            var novaPalavra = controller.text;
            listaData?.adicionarPalavra(novaPalavra);
            Navigator.pop(context);
          }, child: Text("Adicionar")),
        ],
      ),
    );
  }
}
