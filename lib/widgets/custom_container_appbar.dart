import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerAppBar extends StatelessWidget {
  const CustomContainerAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF265DA6),
      height: MediaQuery.of(context).size.height * (1 / 8),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 30.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              child: SvgPicture.asset(
                width: 80,
                height: 40,
                'assets/logos/fundacion_coppel.svg', // Ruta del archivo SVG en assets
              ),
              onTap: () {
                //AL TAPEAR EL LOGO DE ARRIBA A LA IZQUIERDA
              },
            )
          ],
        ),
      ),
    );
  }
}
