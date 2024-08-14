import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/UpcomingScheduleListViewItemModel.dart';

class UpcomingScheduleListViewItem extends StatefulWidget {
  const UpcomingScheduleListViewItem({super.key, required this.item});

  final UpcomingScheduleListViewItemModel item;

  @override
  State<UpcomingScheduleListViewItem> createState() => _UpcomingScheduleListViewItemState();
}

class _UpcomingScheduleListViewItemState extends State<UpcomingScheduleListViewItem> {
  late bool checked;
  late Color backGroundColor;
  late double textOpacity;

  @override
  void initState() {
    checked = false;
    backGroundColor = Colors.transparent;
    textOpacity = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Transform.scale(
              scale: 0.7,
              child: Checkbox(
                value: checked,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.3))),
                side: const BorderSide(width: 1.2),
                activeColor: const Color(0xff21a978),
                onChanged: (val) {
                  checked = val!;
                  if (checked) {
                    textOpacity = 0.7;
                    backGroundColor = Colors.grey.withOpacity(.1);
                  } else {
                    textOpacity = 1;
                    backGroundColor = Colors.transparent;
                  }
                  setState(() {});
                },
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.item.day, style: TextStyle(fontSize: 8, color: Color.fromRGBO(158, 158, 158, textOpacity), fontWeight: FontWeight.w500)),
              const SizedBox(height: 5),
              Text(widget.item.time, style: TextStyle(fontSize: 10, color: Color.fromRGBO(0, 0, 0, textOpacity), fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.item.title, style: TextStyle(fontSize: 10, color: Color.fromRGBO(0, 0, 0, textOpacity), fontWeight: FontWeight.w600)),
              const SizedBox(height: 5),
              Text(widget.item.description, style: TextStyle(fontSize: 8, color: Color.fromRGBO(158, 158, 158, textOpacity), fontWeight: FontWeight.w500)),
            ],
          )
        ],
      ),
    );
  }
}
