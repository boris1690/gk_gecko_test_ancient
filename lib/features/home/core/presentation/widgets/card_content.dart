import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key, this.data});
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 2,
            ),
            child: Image.network(
              data["image"],
            ),
          ),
          Text(data["name"], style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
