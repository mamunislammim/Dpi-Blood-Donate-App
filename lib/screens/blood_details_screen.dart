import 'package:flutter/material.dart';

class BloodDetailsScreen extends StatelessWidget {
  const BloodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),bottomLeft: Radius.circular(8)),
            color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
