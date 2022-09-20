import 'package:flutter/material.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/order_widget.dart';


class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppbar(text: 'Order'),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/orderDetails');
                    },
                    child: const OrderWidget(
                      generatedCode: 'LQNSU346JK',
                      orderDate: 'August 1, 2017',
                      orderStatus: 'Shipping',
                      items: '2 items purchased',
                      price: '\$299,43',
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
