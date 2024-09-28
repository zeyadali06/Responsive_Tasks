import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/Widgets/CustomerSectionScrollView.dart';

class TabletCustomerSection extends StatefulWidget {
  const TabletCustomerSection({super.key, required this.width});

  final double width;

  @override
  TabletCustomerSectionState createState() => TabletCustomerSectionState();
}

class TabletCustomerSectionState extends State<TabletCustomerSection> {
  final List<CustomerModel> customers = [
    const CustomerModel(number: "21.978", icon: Icon(Icons.people, color: Colors.black), title: "Total Customers", percentage: "+15%"),
    const CustomerModel(number: "10.369", icon: Icon(Icons.person, color: Colors.black), title: "Active Customers", percentage: "-9%"),
    const CustomerModel(number: "\$64.981,97", icon: Icon(Icons.transit_enterexit_rounded, color: Colors.black), title: "Profit Total", percentage: "+7.2%"),
    CustomerModel(number: "\$18.158,21", icon: Transform.rotate(angle: -pi, child: const Icon(Icons.transit_enterexit_rounded, color: Colors.black)), title: "Expense Total", percentage: "-2%"),
  ];

  double _getHeight(double maxWidth) {
    double responsiveHeight, lowerLimit, upperLimit;
    if (MediaQuery.sizeOf(context).width >= 600 && MediaQuery.sizeOf(context).width <= 900) {
      responsiveHeight = maxWidth * (maxWidth / 5000);
      lowerLimit = maxWidth / 6;
      upperLimit = maxWidth / 5;
      return responsiveHeight.clamp(lowerLimit, upperLimit);
    } else if (MediaQuery.sizeOf(context).width > 900) {
      responsiveHeight = maxWidth * (maxWidth / 5000);
      lowerLimit = maxWidth / 11;
      upperLimit = maxWidth / 7.5;
      return responsiveHeight.clamp(lowerLimit, upperLimit);
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: _getHeight(widget.width),
      child: CustomerSectionScrollView(customers: customers),
    );
  }
}
