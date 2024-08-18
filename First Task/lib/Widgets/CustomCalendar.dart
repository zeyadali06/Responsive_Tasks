import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key, required this.onDaySelected});

  final void Function(DateTime dateTime) onDaySelected;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late DateTime _focusedDay;
  DateTime? _selectedDay;

  Map<int, String> weekdays = {1: 'Mon', 2: 'Tue', 3: 'Wed', 4: 'Thu', 5: 'Fri', 6: 'Sat', 7: 'Sun'};

  @override
  void initState() {
    _focusedDay = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 5),
      margin: const EdgeInsets.only(left: 7.5, right: kPadding, bottom: kPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime(2000, 1, 1),
        lastDay: DateTime(9999, 12, 31),
        calendarFormat: CalendarFormat.week,
        startingDayOfWeek: StartingDayOfWeek.sunday,
        headerStyle: HeaderStyle(
          headerPadding: const EdgeInsets.only(bottom: 15),
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          titleCentered: true,
          formatButtonVisible: false,
          leftChevronVisible: true,
          leftChevronPadding: const EdgeInsets.only(left: 5),
          rightChevronVisible: true,
          rightChevronPadding: const EdgeInsets.only(left: 5),
          leftChevronIcon: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(width: 1, color: Colors.grey.withOpacity(.2))),
            child: const Icon(Icons.arrow_back_ios_new_rounded, size: 12),
          ),
          rightChevronIcon: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(width: 1, color: Colors.grey.withOpacity(.2))),
            child: const Icon(Icons.arrow_forward_ios_rounded, size: 12),
          ),
        ),
        calendarBuilders: CalendarBuilders(
          dowBuilder: (context, day) {
            return Center(
              child: Text(weekdays[day.weekday]!, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 10)),
            );
          },
          todayBuilder: (context, day, focusedDay) {
            return Center(
              child: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(50)), color: kPrimaryColor.withOpacity(.2)),
                child: Text(day.day.toString(), style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            );
          },
          selectedBuilder: (context, day, focusedDay) {
            return Center(
              child: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: kPrimaryColor),
                child: Text(day.day.toString(), style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            );
          },
        ),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          defaultTextStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          tablePadding: EdgeInsets.symmetric(horizontal: 10),
        ),
        selectedDayPredicate: (day) {
          return isSameDay(_focusedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
            widget.onDaySelected.call(_selectedDay!);
            setState(() {});
          }
        },
      ),
    );
  }
}
