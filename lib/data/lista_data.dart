import 'package:flutter/material.dart';

class ListaData extends InheritedWidget{
  List<String> palavras = ["cadeira", "carro"];

  ListaData({required super.child, super.key});

  void adicionarPalavra(String palavra){
    palavras.add(palavra);
  }

  @override
  bool updateShouldNotify(ListaData oldWidget) {
    return palavras.length != oldWidget.palavras.length;
  }

  static ListaData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ListaData>();
  }

}