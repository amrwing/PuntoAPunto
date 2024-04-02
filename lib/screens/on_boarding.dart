import 'package:flutter/material.dart';
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
        child: SafeArea(
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
              const SizedBox(height: 30),
              const Text(
                "¡Lleva tu negocio al siguiente nivel!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF265DA6),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Aprende",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF265DA6),
                    fontFamily: 'Milker'),
              ),
              const SizedBox(height: 10),
              const Text(
                "Crece",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF265DA6),
                    fontFamily: 'Milker'),
              ),
              const SizedBox(height: 10),
              const Text(
                "Conecta",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF265DA6),
                    fontFamily: 'Milker'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 15,
                    backgroundColor: const Color.fromRGBO(254, 217, 37, 1),
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
                          color: Color.fromRGBO(38, 93, 166, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Color(0xFFFED925),
        ),
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
    return Material(
        child: Scaffold(
      appBar: const CustomAppBar1(),
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(248, 216, 53, 1),
                                Color.fromRGBO(248, 216, 53, 0.90),
                                Color.fromRGBO(252, 229, 116, 0.80),
                                Color.fromRGBO(252, 229, 116, 0.70),
                              ],
                              stops: [0.25, 0.5, 0.75, 1],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                            ),
                            border: Border.all(
                                color: const Color.fromRGBO(38, 93, 166, 0.3)),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(38, 93, 166, 0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bar_chart_sharp,
                                color: Colors.white,
                                size: 130,
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  '¡¿Sabías que el 60% de las microempresas en México son empresas informales?!\n\nSiendo el miedo al proceso de organización la principal razón de esta estadística',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(38, 93, 166, 1),
                                      fontSize: 20,
                                      height: 1.2,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(248, 216, 53, 1),
                                Color.fromRGBO(248, 216, 53, 0.90),
                                Color.fromRGBO(252, 229, 116, 0.80),
                                Color.fromRGBO(252, 229, 116, 0.70),
                              ],
                              stops: [0.25, 0.5, 0.75, 1],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                            ),
                            border: Border.all(
                                color: const Color.fromRGBO(38, 93, 166, 0.3)),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(38, 93, 166, 0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.groups_2_rounded,
                                color: Colors.white,
                                size: 130,
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'El objetivo del eje de desarrollo económico y social de Fundación Coppel está enfocado en brindar oportunidades que generen prosperidad y empoderamiento a nuestras comunidades',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(38, 93, 166, 1),
                                      fontSize: 20,
                                      height: 1.2,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(248, 216, 53, 1),
                                Color.fromRGBO(248, 216, 53, 0.90),
                                Color.fromRGBO(252, 229, 116, 0.80),
                                Color.fromRGBO(252, 229, 116, 0.70),
                              ],
                              stops: [0.25, 0.5, 0.75, 1],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                            ),
                            border: Border.all(
                                color: const Color.fromRGBO(38, 93, 166, 0.3)),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(38, 93, 166, 0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.handshake_rounded,
                                color: Colors.white,
                                size: 130,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  '¡Con PuntoAPunto, verás que llevar una administración y organización formal de tu empresa te llevará al éxito!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(38, 93, 166, 1),
                                      fontSize: 20,
                                      height: 1.2,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.black,
                                    elevation: 15,
                                    backgroundColor:
                                        const Color.fromRGBO(38, 93, 166, 1),
                                    maximumSize: const Size(150, 50),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  onPressed: () async {
                                    //NAVEGAR AL SLIDESHOW DE INFORMACIÓN DE LA APP
                                    context.push("/onboarding_slideshow");
                                  },
                                  child: const Center(
                                    child: Text(
                                      "ESTOY DENTRO",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PageViewDotIndicator(
                currentItem: selectedPage,
                count: 3,
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
      ),
    ));
  }
}
