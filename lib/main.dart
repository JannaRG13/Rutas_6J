import 'package:flutter/material.dart';
import 'package:ramirezrutas/pagina_siete.dart';
import 'package:ramirezrutas/pagina_seis.dart';
import 'package:ramirezrutas/pagina_cinco.dart';
import 'package:ramirezrutas/pagina_cuatro.dart';
import 'package:ramirezrutas/pagina_uno.dart';
import 'package:ramirezrutas/pagina_dos.dart';
import 'package:ramirezrutas/pagina_tres.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre páginas Routes",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
