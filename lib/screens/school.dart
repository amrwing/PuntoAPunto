import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class Escuela extends StatelessWidget {
  const Escuela({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar1(),
      ),
    );
  }
}
