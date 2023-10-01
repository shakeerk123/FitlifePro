import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
               
                width: double
                    .infinity, // Makes the container take up the full width
                child: Image.asset(
                  "assets/images/Frame2.png",
                  fit: BoxFit
                      .cover, // Fill the container while maintaining aspect ratio
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  TextConstants.onboarding2,
                  style: FontConstants.onBoarding,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  TextConstants.onboardingMessage2,
                  style: FontConstants.onBoardingPara,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
