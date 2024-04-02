import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../widgets/widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF265DA6),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              height: 40,
              width: 120,
              'assets/logos/logo_coppel.svg',
            ),
            const SizedBox(height: 10),
            Image.asset('assets/logos/logo.jpg'),
            const SizedBox(height: 10),
            const Text(
              "¡Lleva tu negocio al siguiente nivel!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF265DA6)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 15,
                    backgroundColor: const Color(0xFFFED925),
                    maximumSize: const Size(150, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () async {
                    //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                    context.push("/onboarding_slideshow");
                  },
                  child: const Center(
                    child: Text(
                      "EMPEZAR YA",
                      style: TextStyle(
                          color: Color(0xFF265DA6),
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFFED925),
      ),
    ));
  }
}

class OnBoardingSlideshow extends StatefulWidget {
  const OnBoardingSlideshow({super.key});

  @override
  State<OnBoardingSlideshow> createState() => _OnBoardingSlideshowState();
}

class _OnBoardingSlideshowState extends State<OnBoardingSlideshow> {
  final List<String> textosSlideshows = [
    'texto1',
    'texto2',
    'texto3',
  ];

  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int pageCount = textosSlideshows.length;
    return Material(
        child: Scaffold(
      appBar: const CustomAppBar1(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageView.builder(
                itemCount: textosSlideshows.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(textosSlideshows[index]),
                  );
                },
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    selectedPage = page;
                  });
                }),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFFED925),
      ),
    ));
  }
}
