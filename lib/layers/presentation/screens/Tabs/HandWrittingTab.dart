import 'package:flutter/material.dart';

class HandWrittingScreen extends StatefulWidget {
  const HandWrittingScreen({super.key});

  @override
  State<HandWrittingScreen> createState() => _HandWrittingScreenState();
}

class _HandWrittingScreenState extends State<HandWrittingScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hand Writting Screen'),
        ],
      ),
    );
  }
}
