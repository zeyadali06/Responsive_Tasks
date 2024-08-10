import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/Widgets/CustomerContainer.dart';

class CustomerSection extends StatelessWidget {
  CustomerSection({super.key});

  final List<CustomerModel> customers = [
    const CustomerModel(number: "21.978", icon: Icon(Icons.people), title: "Total Customers", percentage: "+15%"),
    const CustomerModel(number: "10.369", icon: Icon(Icons.person), title: "Active Customers", percentage: "-9%"),
    const CustomerModel(number: "\$64.981,97", icon: Icon(Icons.transit_enterexit_rounded), title: "Profit Total", percentage: "+7.2%"),
    CustomerModel(number: "\$18.158,21", icon: Transform.rotate(angle: -pi, child: const Icon(Icons.transit_enterexit_rounded)), title: "Expense Total", percentage: "-2%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(width: 20)),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: EdgeInsets.only(left: index > 0 ? 10 : 0),
                      child: CustomerContainer(customer: customers[index]),
                    );
                  }),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(width: 20)),
            ],
          );
        },
      ),
    );
  }
}
