import 'dart:ui'; // Necesario para ImageFilter
import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Fondo de texto repetido
          Text(
            '0' * 10000,
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
          // Efecto Blur central
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  child: const Text('Blur'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('¡Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}
