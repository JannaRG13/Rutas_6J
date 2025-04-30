import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Animado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
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
      ),
    );
  }
}
