



import 'package:flutter/material.dart';
import '../componentes/categoria_item.dart';
import '../data/mock_data.dart';

class TelaCategorias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardapio CEFET 2023"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //cada elemento tem a extensao de 200 medidas
          childAspectRatio: 3/2, //proporcao de elementos na tela
          crossAxisSpacing: 20, //espacamento 
          mainAxisSpacing: 20,           ),
        //gridDelegate: ,
       children: mockCategories.map((e) {
        return CategoriaItem(e);
       }).toList(),
      )
    );
  }
}