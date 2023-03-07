import 'package:flutter/material.dart';
import '../clases/datos.dart';

class ListaDatos extends StatelessWidget{
  late final List<Datos> lista;
  ListaDatos(this.lista);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datias Aspirantes"),
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            final item = lista[index];
            return ListTile(
              title: Text(item.idPajaro +'\n'+ item.nombreCom),
              subtitle: Text(item.nombreCien),
              leading: Image(
                image: NetworkImage('https://picsum.photos/700/400?randmos'),
                fit: BoxFit.fitHeight,
            width: 50,
            )
            );
          }
      ),
    );
  }

}