import 'package:flutter/material.dart';

class HowDoesItWorkScreen extends StatelessWidget {
  const HowDoesItWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How Does It Work'),
      ),
      body: const Center(
        child: Text('How Does It Work Screen'),
      ),
    );
  }
}
