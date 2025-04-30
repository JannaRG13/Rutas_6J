import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ← Añade Scaffold aquí
      body: Center(
        // Opcional: Centra el contenido
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              child: const Text("Switch"),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('¡Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
