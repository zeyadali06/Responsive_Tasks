import 'package:flutter/material.dart';
import 'package:secondtask/constants.dart';

class TopBarTextField extends StatelessWidget {
  const TopBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .19,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(kRadius)),
              child: IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                hoverColor: Colors.transparent,
                icon: const Icon(Icons.search, color: Colors.white),
              ),
            ),
          ),
          filled: true,
          hoverColor: const Color(0xff323545),
          fillColor: kPrimaryColor,
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xffcac4d0), fontSize: 18, fontWeight: FontWeight.w500),
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(kRadius),
      borderSide: const BorderSide(color: kPrimaryColor, width: 0),
    );
  }
}
