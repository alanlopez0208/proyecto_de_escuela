import 'package:flutter/material.dart';
import '../clases/datos.dart';

class CardPage2 extends StatelessWidget {
  late final List<Datos> lista;

  CardPage2(this.lista);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aves Durango'),
        ),
        body: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              final item = lista[index];
              return Padding(
                padding: EdgeInsets.all(10.00),
                child: Card(
                  color: Colors.grey[3000],
                  elevation: 8.0,
                  child: Container(
                    padding: EdgeInsets.all(10.00),
                    height: 200,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage("https://picsum.photos/700/400?randmom"),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 8
                                  ),
                                  width: 150,
                                  color: Colors.black,
                                  height: 2
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(item.nombreCom),
                                Text(item.nombreCien),
                                Text(item.idPajaro)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
