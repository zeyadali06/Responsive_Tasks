import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/UpcomingScheduleListViewItemModel.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';

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
    return GestureDetector(
      onTap: () {
        checked = !checked;
        if (checked) {
          textOpacity = 0.7;
          backGroundColor = Colors.grey.withOpacity(.1);
        } else {
          textOpacity = 1;
          backGroundColor = Colors.transparent;
        }
        setState(() {});
      },
      child: Container(
        color: backGroundColor,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            const SizedBox(width: 7),
            Flexible(
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
            const SizedBox(width: 7),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.item.day,
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 8), color: Color.fromRGBO(158, 158, 158, textOpacity), fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 5),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.item.time,
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10), color: Color.fromRGBO(0, 0, 0, textOpacity), fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.item.title,
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10), color: Color.fromRGBO(0, 0, 0, textOpacity), fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 5),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.item.description,
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 8), color: Color.fromRGBO(158, 158, 158, textOpacity), fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
