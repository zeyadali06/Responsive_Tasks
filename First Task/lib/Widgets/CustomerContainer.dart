import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/constants.dart';

class CustomerContainer extends StatelessWidget {
  const CustomerContainer({super.key, required this.customer});
  final CustomerModel customer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius),
        border: Border.all(width: .7, color: Colors.black12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(customer.title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5),
              Text(customer.number.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customer.percentage.contains("-") ? const Icon(Icons.arrow_circle_down, color: Colors.red, size: 12) : const Icon(Icons.arrow_circle_up, color: Colors.green, size: 12),
                  const SizedBox(width: 1),
                  Text(
                    customer.percentage,
                    style: TextStyle(color: customer.percentage.contains("-") ? Colors.red : Colors.green, fontSize: 8, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 2),
                  const Text("from the last month", style: TextStyle(color: Colors.black, fontSize: 9)),
                ],
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
            child: IconButton(padding: const EdgeInsets.all(0), onPressed: () {}, icon: customer.icon, iconSize: 14),
          )
        ],
      ),
    );
  }
}
