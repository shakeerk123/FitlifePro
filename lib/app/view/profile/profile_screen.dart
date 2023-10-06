import 'package:fitness_app/app/view/profile/user_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../../../utils/color.dart';
import '../../../utils/text_constanst.dart';
import '../../../widgets/profile_widgets/gridbox_profile.dart';
import 'logout_widget.dart';
import 'profile_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              const ProfileBarTop(
                title: "Profile",
              ),
              const SizedBox(
                height: 40,
              ),
              const UserNameWidget(
                username: "Stefani worm",
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GridBoxProfile(
                    title: '180cm',
                    subtitle: 'Height',
                  ),
                  GridBoxProfile(
                    title: '65kg',
                    subtitle: 'Weight',
                  ),
                  GridBoxProfile(
                    title: '22yo',
                    subtitle: 'Age',
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(0, 0), // Offset
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white70),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 19.0),
                          child: Text(
                            "Notification",
                            style: FontConstants.thinBold,
                          ),
                        ),
                        ListTile(
                          minLeadingWidth: 1,
                          title: const Text(
                            "Pop-up Notification",
                            style: FontConstants.skip,
                          ),
                          leading: const Icon(IconlyLight.notification),
                          trailing: CupertinoSwitch(
                            activeColor: FitnessAppColors.logoColor3,
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const LogoutWidget()
            ],
          ),
        ),
      ),
    );
  }
}
