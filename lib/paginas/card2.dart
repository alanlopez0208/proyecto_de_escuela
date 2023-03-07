import 'package:flutter/material.dart';
import '../clases/datos.dart';

class CardPage2 extends StatelessWidget{
  late final List<Datos> lista;

  CardPage2(this.lista)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Aves Durango'),
      ),
      body: ListView.builder(itemCount: lista.length,
          itemBuilder: (context, index){
        final item = lista [index];
        return Padding(padding: EdgeInsets.all(10.00),
        child: Card(
          color: Colors.grey[3000],
          elevation: 8.0,
          child: Container(
            padding: EdgeInsets.all(10.00),
            height: 200,
            width: 300,
          ),
        ),
        )
          })
    );
  }


}