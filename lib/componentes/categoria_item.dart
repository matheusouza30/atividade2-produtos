import 'package:flutter/material.dart';
import 'package:marcos1/Tela/tela_produtos.dart';
import '../models/categorias.dart';

//import '../models/categorias.dart';
import '../utils/rotas.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;

  CategoriaItem(this.categoria);

  void selecionarCategoria(BuildContext context) {

    Navigator.of(context).pushNamed(Rotas.PRODUTOS, arguments: categoria);
    //Navigator.of(context).push(

      //MaterialPageRoute(builder: (_) {
        //return TelaProdutos(categoria);
      //}),
    //);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarCategoria(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          categoria.titulo,
          style: TextStyle(fontSize: 18),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.color.withOpacity(0.5),
              categoria.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
