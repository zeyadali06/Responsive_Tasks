import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';

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
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              children: List.generate(4, (index) {
                return Container(
                  margin: EdgeInsets.only(left: index < 4 && index != 0 ? 10 : 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: .7, color: Colors.black12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(customers[index].title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 5),
                          Text(customers[index].number.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              customers[index].percentage.contains("-")
                                  ? const Icon(Icons.arrow_circle_down, color: Colors.red, size: 12)
                                  : const Icon(Icons.arrow_circle_up, color: Colors.green, size: 12),
                              const SizedBox(width: 1),
                              Text(
                                customers[index].percentage,
                                style: TextStyle(color: customers[index].percentage.contains("-") ? Colors.red : Colors.green, fontSize: 8, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(width: 2),
                              const Text("from the last month", style: TextStyle(color: Colors.black, fontSize: 9)),
                            ],
                          ),
                        ],
                      ),
                      // const Expanded(child: SizedBox()),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
                        child: IconButton(padding: const EdgeInsets.all(0), onPressed: () {}, icon: customers[index].icon, iconSize: 14),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
