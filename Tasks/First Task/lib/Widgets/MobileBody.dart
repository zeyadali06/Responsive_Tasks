import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/Widgets/SalesOverview.dart';
import 'package:responsive_designs/Widgets/CustomCalendar.dart';
import 'package:responsive_designs/Widgets/CustomerContainer.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleListView.dart';
import 'package:responsive_designs/Widgets/UpcomingScheduleStatistics.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});

  final List<CustomerModel> customers = [
    const CustomerModel(number: "21.978", icon: Icon(Icons.people, color: Colors.black), title: "Total Customers", percentage: "+15%"),
    const CustomerModel(number: "10.369", icon: Icon(Icons.person, color: Colors.black), title: "Active Customers", percentage: "-9%"),
    const CustomerModel(number: "\$64.981,97", icon: Icon(Icons.transit_enterexit_rounded, color: Colors.black), title: "Profit Total", percentage: "+7.2%"),
    CustomerModel(number: "\$18.158,21", icon: Transform.rotate(angle: -pi, child: const Icon(Icons.transit_enterexit_rounded, color: Colors.black)), title: "Expense Total", percentage: "-2%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Hello, ',
                            style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 20)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Anthony!',
                            style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 20), fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Here's your overview of your business!",
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomerContainer(customer: customers[0]),
              const SizedBox(height: 10),
              CustomerContainer(customer: customers[1]),
              const SizedBox(height: 10),
              CustomerContainer(customer: customers[2]),
              const SizedBox(height: 10),
              CustomerContainer(customer: customers[3]),
              const SizedBox(height: 20),
              const SizedBox(
                height: 230,
                child: SalesOverview(values: [7700, 6500, 4200, 5000, 7400, 9200, 6300, 7400, 3800, 5000, 7200, 8500]),
              ),
              const SizedBox(height: 20),
              const UpcomingScheduleStatistics(),
              const SizedBox(height: 20),
              CustomCalendar(onDaySelected: (dateTime) {}),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: UpcomingScheduleListView(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
