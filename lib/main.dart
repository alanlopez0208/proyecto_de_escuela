import 'package:flutter/material.dart';
import 'package:proyecto_escuela/WebView.dart';
import 'package:proyecto_escuela/paginas/card.dart';
import 'package:proyecto_escuela/menu/MenuLateral.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Aves",
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.amber,
            fontFamily: "Letters for Learners",
            textTheme: TextTheme(
              headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              headline6: TextStyle(
                  fontSize: 45.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              bodyText2: TextStyle(fontSize: 30.0, color: Colors.black),
            )),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Aves de Durango'),
        centerTitle: true,
        elevation: 25.5,
        actions: [
          IconButton(
              onPressed: () {
                /*
                * ScaffoldMessage.of(context).showSnackBar(
                *   SnackBar(content: Text("Desarrollo de Soluciones Moviles\n
                *     Nombre: Alan Guillermo Lopez Lopez."))*/
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                            //habrá un espacio de 15.0 píxeles tanto arriba como abajo del contenido dentro del Container con el atributo padding
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Center(
                                child: Text("Instituto Tecnologico de Durango",
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center))),
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage("imagenes/logo.png"),
                                width: 50,
                              ),
                              Column(children: [
                                Text("Alan Guillermo Lopez",
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center),
                                SizedBox(height: 20),
                                Text("Garcia Vindaña Norma Alicia",
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center),
                                SizedBox(height: 20),
                                Text("Diseño de Soluciones Moviles",
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center),
                                SizedBox(height: 20),
                                Text("Ingeneria en Sistemas Computacionales",
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center)
                              ])
                            ],
                          )
                        ],
                      );
                    });
              },
              icon: Icon(Icons.info_outline, color: Colors.white),
              tooltip: "Informacion")
        ],
      ),
      drawer: MenuLateral(),
      body: Center(child: WebView()),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListaCards()));
          },
          tooltip: "Siguiente",
          child: Icon(Icons.arrow_forward)),
    );
  }
}
