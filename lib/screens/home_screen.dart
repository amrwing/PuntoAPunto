import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("PuntoAPunto", style: TextStyle(fontSize: 20)),
              Text("Bienvenidos a pene", style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
