import 'package:fitness_app/utils/color.dart';
import 'package:fitness_app/utils/text_constanst.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: FitnessAppColors.box,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(IconlyLight.arrow_left_2))),
                 
                  const Text(
                    "Notification",
                    style: FontConstants.namesmallSize,
                  ),
                 const SizedBox(width: 40,)
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: ListView(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        "Dont miss your workout ",
                        style: FontConstants.title,
                      ),
                      subtitle: Text(
                        "About 1 minutrs ago",
                        style: FontConstants.smallthin,
                      ),
                      trailing: Icon(IconlyLight.delete),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        "Dont miss your workout ",
                        style: FontConstants.title,
                      ),
                      subtitle: Text(
                        "About 1 minutrs ago",
                        style: FontConstants.smallthin,
                      ),
                      trailing: Icon(IconlyLight.delete),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text(
                        "Dont miss your workout ",
                        style: FontConstants.title,
                      ),
                      subtitle: Text(
                        "About 1 minutrs ago",
                        style: FontConstants.smallthin,
                      ),
                      trailing: Icon(IconlyLight.delete),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
