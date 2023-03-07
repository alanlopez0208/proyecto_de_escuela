import 'package:flutter/material.dart';
import 'package:proyecto_escuela/main.dart';
import 'package:proyecto_escuela/paginas/card.dart';
import 'package:proyecto_escuela/paginas/mapas.dart';

import '../paginas/formularios.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
        child: Text(''),
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            image: DecorationImage(
                image: AssetImage('imagenes/logo.png'), fit: BoxFit.fitHeight)),
      ),
      Ink(
        color: Colors.amber,
        child: ListTile(
          title: Text("Aves endemicas de Durango",
              style: TextStyle(color: Colors.white)),
        ),
      ),
      ListTile(
        title: Text(
          "Inicio",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(Icons.home, color: Colors.black),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Home();
          }));
        },
      ),
      ListTile(
          title: Text(
            "Fotos",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(Icons.photo, color: Colors.black),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListaCards();
            }));
          }),
      ListTile(
          title: Text(
            "Mapa",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(Icons.gps_fixed, color: Colors.black),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MapaPage();
            }));
          }),
      ListTile(
          title: Text(
            "Mapa",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(Icons.app_registration, color: Colors.black),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Formulario();
            }));
          })
    ]));
  }
}
