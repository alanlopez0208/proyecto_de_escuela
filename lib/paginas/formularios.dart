import 'package:flutter/material.dart';
import 'package:proyecto_escuela/paginas/card2.dart';
import 'package:proyecto_escuela/paginas/listaDatos.dart';
import '../clases/datos.dart';
import 'card.dart';

class Formulario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return miFormulario();
  }
}

class miFormulario extends State<Formulario> {
  final _controladorn = TextEditingController();
  final _controladore = TextEditingController();
  final _controladorId = TextEditingController();
  List<Datos> _datos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Registro de Aves",
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.00)),
              TextField(
                controller: _controladorId,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "ID Pajaro ejemplo AVROD1234"),
              ),
              Padding(padding: EdgeInsets.all(20.00)),
              TextField(
                controller: _controladorn,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Nombre Común"),
              ),
              Padding(padding: EdgeInsets.all(20.00)),
              TextField(
                controller: _controladore,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nombre Cientifico"),
              ),
              Padding(padding: EdgeInsets.all(20.00)),
              ElevatedButton(
                  onPressed: () {
                    if (validarNombre(_controladorn.text) &&
                        validarNombreCient(_controladore.text) &&
                        validarId(_controladorId.text)) {
                      _datos.add(Datos(_controladorn.text, _controladore.text,
                          _controladorId.text));

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListaDatos(_datos);
                      }));
                    } else {
                      String errores = "";
                      if (!validarNombre(_controladorn.text)) {
                        errores += "El Nombre Comun: Solo debe ser palabras\n";
                      }
                      if (!validarNombreCient(_controladore.text)) {
                        errores +=
                            "El Nombre Cientifico: Solo debe ser palabras.\n";
                      }
                      if (!validarId(_controladorId.text)) {
                        errores +=
                            "El Identificador: Debe comensar con AV seguido "
                            "de 1 a 4 letras luego de 1 a 4 numeros";
                      }
                      alertaNombre(context, errores);
                    }
                  },
                  child: Text("Enviar"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _datos.add(new Datos(
            _controladorn.text,
              _controladore.text,
              _controladorId.text
          ));
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return CardPage2(_datos);
              }));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

bool validarNombre(String cadena) {
  RegExp exp = new RegExp(r'^[a-zA-Z]+[. ]*[a-zA-Z]*$');
  if (cadena.isEmpty) {
    return false;
  } else if (!exp.hasMatch(cadena)) {
    return false;
  } else {
    return true;
  }
}

bool validarNombreCient(String cadena) {
  RegExp exp = new RegExp(r'^[a-zA-Z]+[. ]*[a-zA-Z]*$');
  if (cadena.isEmpty) {
    return false;
  } else if (!exp.hasMatch(cadena)) {
    return false;
  } else {
    return true;
  }
}

bool validarId(String cadena) {
  RegExp exp = new RegExp(r'^AV[a-zA-z]{1,4}\d{1,4}$');
  if (cadena.isEmpty) {
    return false;
  } else if (!exp.hasMatch(cadena)) {
    return false;
  } else {
    return true;
  }
}

void alertaNombre(BuildContext context, String textField) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alerta"),
          content: Text("Verifique la información de: \n" + textField,
              style: TextStyle(fontFamily: "Arial", fontSize: 15)),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("ok"))
          ],
        );
      });
}
