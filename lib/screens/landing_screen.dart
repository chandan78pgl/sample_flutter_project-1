import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sample_project/utils/constants.dart';

import 'home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: Text(
                "SKIP",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: size.height * 0.7,
              child: Swiper(
                itemCount: 3,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: size.height * 0.4,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/logos/doctor_logo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: double.infinity,
                            child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text("Find your specialist",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )))),
                        Text(
                            "Now it's easy to make an appointment with your doctor",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            )),
                      ],
                    ),
                  );
                },
                loop: false,
                pagination: SwiperPagination(
                  builder: SwiperPagination.dots,
                  alignment: Alignment.bottomCenter,
                ),
                physics: BouncingScrollPhysics(),
                // viewportFraction: 0.8,
                // scale: 0.9,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              height: 60.0,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.indigo),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: () =>
                      {Navigator.of(context).pushNamed(HomeScreenRoute)},
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
