
import 'package:flutter/material.dart';

import '../../utils/text_constanst.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextConstants.welcomeMessage,
                style: FontConstants.headline2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Stefani Womm",
                style: FontConstants.name,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
