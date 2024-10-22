import 'package:flutter/cupertino.dart';

import 'order_info.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          OrderInfo(date: "12/5/2024",
            itemCount: "3",
            deliveryTime: "Schedule",
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
