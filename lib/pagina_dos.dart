import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Dos',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 25.0,
            )),
        backgroundColor: Color(0xff6db285),
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
