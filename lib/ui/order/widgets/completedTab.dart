import 'package:flutter/cupertino.dart';
import 'orderCompletedInfo.dart';


class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          OrderCompletedInfo(
            date: "12/5/2024",
            itemCount: "3",
            deliveryTime: "Now",
            deliveryType: "Collect",
            name: "John Doe",
            orderId: "123456",
            price: "17,800",
            time: "12:00PM",
            image: 'ghjkl;',
          ),
          OrderCompletedInfo(
            date: "12/5/2024",
            itemCount: "3",
            deliveryTime: "Now",
            deliveryType: "Collect",
            name: "John Doe",
            orderId: "123456",
            price: "17,800",
            time: "12:00PM",
            image: 'ghjkl;',
          ),

        ],
      ),
    );
  }
}
