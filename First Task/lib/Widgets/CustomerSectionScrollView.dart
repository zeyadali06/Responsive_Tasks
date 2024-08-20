import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/Widgets/CustomerContainer.dart';
import 'package:responsive_designs/constants.dart';

class CustomerSectionScrollView extends StatelessWidget {
  const CustomerSectionScrollView({super.key, required this.customers});

  final List<CustomerModel> customers;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(flex: 3, child: SizedBox()),
              Row(
                children: List.generate(
                  customers.length,
                  (index) {
                    double leftPadding = 0, rightPadding = 0;
                    if (index == 0) {
                      leftPadding = kPadding;
                    } else if (index > 0 && index < customers.length - 1) {
                      leftPadding = 10;
                    } else {
                      leftPadding = 10;
                      rightPadding = kPadding;
                    }

                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
                        child: CustomerContainer(customer: customers[index]),
                      ),
                    );
                  },
                ),
              ),
              const Expanded(flex: 2, child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
