import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';

class DateDropDownMenu extends StatefulWidget {
  const DateDropDownMenu({super.key, required this.onChanged});

  final void Function(String? val) onChanged;

  @override
  State<DateDropDownMenu> createState() => _DateDropDownMenuState();
}

class _DateDropDownMenuState extends State<DateDropDownMenu> {
  late String value;

  @override
  void initState() {
    value = 'Month';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          onChanged: (v) {
            widget.onChanged(v);
            value = v!;
            setState(() {});
          },
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          padding: const EdgeInsets.only(left: 10, right: 5),
          value: value,
          borderRadius: BorderRadius.circular(kRadius),
          style: const TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500),
          items: const [
            DropdownMenuItem<String>(value: 'Day', child: Text('Day')),
            DropdownMenuItem<String>(value: 'Month', child: Text('Month')),
            DropdownMenuItem<String>(value: 'Year', child: Text('Year')),
          ],
        ),
      ),
    );
  }
}
