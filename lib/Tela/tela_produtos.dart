import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:marcos1/models/categorias.dart';


class TelaProdutos extends StatelessWidget{
  //TelaProdutos(Categoria categoria);


    @override
    Widget build(BuildContext context){
      final categoria = ModalRoute.of(context)?.settings.arguments as Categoria;
     return Scaffold(
        appBar: AppBar(
            title: Text("Produtos da categoria"),

        ),
        body: Text("Produto da ${categoria.titulo}")
     );
    }
}


//ir no categoria itemBuilder

//clicar na lampada e clicar em wrap Widget

//return Inkwell