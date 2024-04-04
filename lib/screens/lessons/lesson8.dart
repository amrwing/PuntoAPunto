import 'package:flutter/material.dart';

import 'package:punto_a_punto/widgets/widgets.dart';

class Leccion8 extends StatelessWidget {
  const Leccion8({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar1(),
          body: Text('hola'),
          bottomNavigationBar: const BottomAppBar(
            color: Color(0xFFFED925),
          ),
        ),
      ),
    );
  }
}
