import 'package:flutter/material.dart';
import 'package:responsive_designs/Models/CustomersModel.dart';
import 'package:responsive_designs/ResponsiveFontSize.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      customer.title,
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 10), fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      customer.number.toString(),
                      style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 20), fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  children: [
                    customer.percentage.contains("-") ? const Icon(Icons.arrow_circle_down, color: Colors.red, size: 12) : const Icon(Icons.arrow_circle_up, color: Colors.green, size: 12),
                    const SizedBox(width: 1),
                    Flexible(
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          customer.percentage,
                          style: TextStyle(
                              color: customer.percentage.contains("-") ? Colors.red : Colors.green, fontSize: getResponsiveFontSize(context: context, fontSize: 8), fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2),
                    Flexible(
                      flex: 3,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "from the last month",
                          style: TextStyle(color: Colors.black, fontSize: getResponsiveFontSize(context: context, fontSize: 9)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(50)),
            child: IconButton(padding: EdgeInsets.zero, onPressed: () {}, icon: customer.icon, iconSize: 16),
          )
        ],
      ),
    );
  }
}
