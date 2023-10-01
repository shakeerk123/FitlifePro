import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({super.key});

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
                  "assets/images/Frame3.png",
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
                  TextConstants.onboarding3,
                  style: FontConstants.onBoarding,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  TextConstants.onboardingMessage3,
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
