import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 50,
      child: const Center(
        child: Text(
          'Dany Fatihul Ihsan | 2241720251 | TI-3B',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}