import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationScreen extends StatelessWidget {
  const LottieAnimationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Lottie.asset(
          'assets/animations/welcomeLottie.json',
          width: 300,
          height: 100,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}