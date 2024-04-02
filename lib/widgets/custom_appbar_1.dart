import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar1({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
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
    );
  }
}
