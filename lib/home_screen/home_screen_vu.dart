import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_screen_vm.dart';

// Image(
//                     width: 200,
//                     image: AssetImage('lib/quiz_app/assets/quiz-logo.png')),
class HomeScreenVU extends StackedView<HomeScreenVM> {
  const HomeScreenVU({super.key});

  @override
  Widget builder(BuildContext context, HomeScreenVM viewModel, Widget? child) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderMain(
              screensize: screenSize,
            ),
            screenSize.width < 1100
                ? const MainImgClickablewidget()
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "DANFOOS\nTROUBLESHOOTER\nAPP",
                        style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Montserrat'),
                      ),
                      MainImgClickablewidget(),
                    ],
                  )
          ],
        ),
      ),
    );
  }

  @override
  HomeScreenVM viewModelBuilder(BuildContext context) => HomeScreenVM();
}

class MainImgClickablewidget extends StatelessWidget {
  const MainImgClickablewidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 800,
        child: Stack(
          children: [
            const Image(image: AssetImage('lib/assets/mainscreens.png')),
            SizedBox(
              width: 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                      left: 33,
                      bottom: 25,
                    ),
                    color: const Color.fromARGB(0, 255, 193, 7),
                    width: 145,
                    height: 100,
                    child: InkWell(
                      overlayColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: const Image(
                          image: AssetImage('lib/assets/select.png')),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 32, left: 38),
                        color: const Color.fromARGB(0, 33, 149, 243),
                        width: 100,
                        height: 100,
                        child: InkWell(
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          hoverColor: Colors.transparent,
                          onTap: () {},
                          child: const Image(
                              image: AssetImage('lib/assets/select.png')),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 93, top: 0),
                        color: const Color.fromARGB(0, 244, 67, 54),
                        width: 80,
                        height: 100,
                        child: InkWell(
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          hoverColor: Colors.transparent,
                          onTap: () {},
                          child: const Image(
                              image: AssetImage('lib/assets/select.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class HeaderMain extends StatelessWidget {
  final Size screensize;

  const HeaderMain({
    required this.screensize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 238, 238, 238),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Text(
                "System Areas",
                style: TextStyle(
                    fontSize: screensize.width < 600 ? 28 : 34,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          // Spacer(),
          const Row(
            children: [
              Image(image: AssetImage('lib/assets/headericon.png')),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
