import 'package:flutter/material.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/pages/account/components/textfield_zero.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomAppbar(text: 'Add Card'),

        // Expanded(
        //     child: ListView(
        //   children: [
        //     Text('Card Number'),
        //     Row(
        //       children: [Text('Expiration Date'), Text('Security Code')],
        //     ),
        //     Row(
        //       children: [
        //         TextfieldZero(labeltext: '12/12'),
        //         TextfieldZero(labeltext: '1219')
        //       ],
        //     ),
        //     Text('Card Holder'),
        //     TextfieldZero(labeltext: 'Lailyfa Febrina')
        //   ],
        // ))
      ]),
    ));
  }
}
