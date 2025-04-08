import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Panta Uno',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Color(0xffffb9d1),
        ),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ver pantalla 2'),
            )),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ver pantalla 3'),
            )),
          ],
        ));
  }
}
