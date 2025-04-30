import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Uno',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffffb9d1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text('Logo FLutter'),
            ),
            const SizedBox(height: 20), // Espaciado entre botones
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text('Animación Flutter'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla4'),
              child: const Text('Animación Padding'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla5'),
              child: const Text('Contador'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla6'),
              child: const Text('Pantalla Blur'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla7'),
              child: const Text('Pantalla Iconos'),
            ),
          ],
        ),
      ),
    );
  }
}
