import 'package:flutter/material.dart';

class Cards extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CustomCard();
  }
}

class CustomCard extends State<Cards>{

  @override
  Widget build(BuildContext context) {
    return Card(
      shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset('imagenes/pajaro1.jpg'),
          ListTile(
            title: Text("Pokemon Pro"),
            leading: Icon(Icons.face),
            subtitle: Text("AN"),
          )
        ],
      ),

    );
  }
}

Card MyCard(){
  return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation : 10,
      margin : EdgeInsets.all(10),
      child : Column(
          children: [
            Image.asset('imagenes/pajaro2.jpg'),
            ListTile(
              title: Text("Pokemon Pro"),
              leading: Icon(Icons.face),
              subtitle: Text("AN"),
            )
          ]
      )
  );
}

Card MyCard2(){
  return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation : 10,
      margin : EdgeInsets.all(10),
      child : Column(
          children: [
            Image.asset('imagenes/pajaro3.jpg'),
            ListTile(
              title: Text("Pokemon Pro"),
              leading: Icon(Icons.face),
              subtitle: Text("AN"),
            )
          ]
      )
  );
}

class ListaCards extends StatelessWidget{
  List<Widget> cartas = [
    Cards(),
    MyCard(),
    MyCard2()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Aves Durango", style: TextStyle(fontSize: 15))
        ),
        body : Container(
          child: ListView(
            children: <Widget>[
              ...cartas
            ],
          ),
        )
    );
  }
}