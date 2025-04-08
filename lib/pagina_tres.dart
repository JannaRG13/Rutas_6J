import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Tres',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 25.0,
            )),
        backgroundColor: Color(0xffe8d686),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('¡Regresar!'),
        ),
      ),
    );
  }
}
