import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../utils/text_constanst.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.0),
                child: Text(
                  "Other",
                  style: FontConstants.thinBold,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                title: Text(
                  "Logout",
                  style: FontConstants.skip,
                ),
                leading: Icon(IconlyLight.logout),
               
              )
            ],
          ),
        ),
      ),
    );
  }
}
