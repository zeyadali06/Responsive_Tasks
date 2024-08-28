import 'package:flutter/material.dart';
import 'package:secondtask/assets.dart';
import 'package:secondtask/constants.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        border: Border.all(color: const Color(0xff46465a)),
        borderRadius: BorderRadius.circular(kRadius),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Image.asset(height: 35, width: 35, Assets.assetsImagesProfilePic),
          ),
          const SizedBox(width: 10),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Angelina Jolie',
              style: TextStyle(color: Colors.white),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.keyboard_arrow_down),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
