import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      appBar: const CustomAppBar1(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "PuntoAPunto",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF265DA6)),
            ),
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

//PAGINA DESPUES DE PRESIONAR EL BOTÓN

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
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: PageView.builder(
                  itemCount: textosSlideshows.length,
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Center(
                        child: Text(textosSlideshows[index]),
                      ),
                    );
                  },
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedPage = page;
                    });
                  }),
            ),
            PageViewDotIndicator(
              currentItem: selectedPage,
              count: pageCount,
              unselectedColor: Colors.black26,
              selectedColor: Colors.blue,
              duration: const Duration(milliseconds: 200),
              boxShape: BoxShape.rectangle,
              onItemClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    ));
  }
}
