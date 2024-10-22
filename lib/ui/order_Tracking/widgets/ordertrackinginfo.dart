import 'package:flutter/cupertino.dart';

import 'orderitemstile.dart';

class OrderTrackingInfo extends StatelessWidget {
  const OrderTrackingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const
        OrderItemsTile(date: "12/5/2024",
          itemCount: "2",
          deliveryTime: "Now",
          deliveryType: "Delivery",
          prodName: "Strawberries",
          orderId: "123456",
          prodPrice: "7,000",
          time: "12:00PM",
          image: 'ghjkl;',

    );
  }
}
