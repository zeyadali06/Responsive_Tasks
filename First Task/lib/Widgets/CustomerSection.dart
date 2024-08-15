import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/Widgets/CustomerContainer.dart';
import 'package:responsive_designs/constants.dart';

// class CustomerSection extends StatelessWidget {
//   CustomerSection({super.key});

//   final List<CustomerModel> customers = [
//     const CustomerModel(number: "21.978", icon: Icon(Icons.people), title: "Total Customers", percentage: "+15%"),
//     const CustomerModel(number: "10.369", icon: Icon(Icons.person), title: "Active Customers", percentage: "-9%"),
//     const CustomerModel(number: "\$64.981,97", icon: Icon(Icons.transit_enterexit_rounded), title: "Profit Total", percentage: "+7.2%"),
//     CustomerModel(number: "\$18.158,21", icon: Transform.rotate(angle: -pi, child: const Icon(Icons.transit_enterexit_rounded)), title: "Expense Total", percentage: "-2%"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: CustomScrollView(
//         scrollDirection: Axis.horizontal,
//         slivers: [
//           SliverFillRemaining(
//             hasScrollBody: false,
//             child: Row(
//               children: List.generate(4, (index) {
//                 double leftPadding = 0, rightPadding = 0;
//                 if (index == 0) {
//                   leftPadding = kPadding;
//                 } else if (index > 0 && index < customers.length - 1) {
//                   leftPadding = 10;
//                 } else {
//                   leftPadding = 10;
//                   rightPadding = kPadding;
//                 }

//                 return Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
//                     child: CustomerContainer(customer: customers[index]),
//                   ),
//                 );
//               }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomerSection extends StatefulWidget {
  const CustomerSection({super.key});

  @override
  CustomerSectionState createState() => CustomerSectionState();
}

class CustomerSectionState extends State<CustomerSection> {
  final GlobalKey _key = GlobalKey();
  late double height;
  late bool updated;

  final List<CustomerModel> customers = [
    const CustomerModel(number: "21.978", icon: Icon(Icons.people), title: "Total Customers", percentage: "+15%"),
    const CustomerModel(number: "10.369", icon: Icon(Icons.person), title: "Active Customers", percentage: "-9%"),
    const CustomerModel(number: "\$64.981,97", icon: Icon(Icons.transit_enterexit_rounded), title: "Profit Total", percentage: "+7.2%"),
    CustomerModel(number: "\$18.158,21", icon: Transform.rotate(angle: -pi, child: const Icon(Icons.transit_enterexit_rounded)), title: "Expense Total", percentage: "-2%"),
  ];

  @override
  void initState() {
    height = 200;
    updated = false;
    super.initState();
  }

  void _getHeight() {
    if (!updated) {
      try {
        final RenderBox renderBox = _key.currentContext!.findRenderObject() as RenderBox;
        height = renderBox.size.height;
        updated = true;
        setState(() {});
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: IntrinsicHeight(
              child: Row(
                children: List.generate(customers.length, (index) {
                  double leftPadding = 0, rightPadding = 0;
                  if (index == 0) {
                    leftPadding = kPadding;
                  } else if (index > 0 && index < customers.length - 1) {
                    leftPadding = 10;
                  } else {
                    leftPadding = 10;
                    rightPadding = kPadding;
                  }

                  if (index == 1) {
                    try {
                      WidgetsBinding.instance.addPostFrameCallback((_) => _getHeight());
                    } catch (_) {}
                  }

                  return Expanded(
                    key: index == 1 ? _key : null,
                    child: Padding(
                      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
                      child: CustomerContainer(customer: customers[index]),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
