import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/svg.dart';

class Escuela extends StatelessWidget {
  const Escuela({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFF265DA6),
            actions: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 8,
                        ),
                        child: SvgPicture.asset(
                          width: 80,
                          height: 40,
                          'assets/logos/fundacion_coppel.svg', // Ruta del archivo SVG en assets
                        ),
                      ),
                      onTap: () {
                        //AL TAPEAR EL LOGO DE ARRIBA A LA IZQUIERDA
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          body: const Text(
            "sexo",
          ),
          bottomNavigationBar: const BottomAppBar(
            color: Color(0xFFFED925),
          ),
        ),
      ),
    );
  }
}
