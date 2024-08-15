import 'package:flutter/material.dart';
import 'package:responsive_designs/Widgets/UpComingEventSection.dart';
import 'package:responsive_designs/constants.dart';
import 'package:responsive_designs/Widgets/AllDrawerItems.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff101214),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      CircleAvatar(backgroundColor: kPrimaryColor, child: Text('D')),
                      SizedBox(width: 10),
                      Text('Decko', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.arrow_back, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 35,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(0),
                        hintText: 'Search here...',
                        hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
                        prefixIcon: const Icon(Icons.search, color: Colors.white),
                        filled: true,
                        fillColor: const Color(0xff232527),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: const BorderSide(width: 1, color: Color(0xff232527))),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: const BorderSide(width: 1, color: Color(0xff232527))),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: const BorderSide(width: 1, color: Color(0xff232527))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const AllDrawerItems(),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 20)),
                  UpComingEventSection(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
