import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Lottie Animation
              Lottie.asset(
                'assets/animations/welcomeLottie.json', // Path to your Lottie file
                width: 300, // Adjust the size as needed
                height: 100,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 40), // Spacing between animation and buttons

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Sign In page
                  Navigator.pushNamed(context, '/LottieAnimationScreen');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full-width button
                ),
                child: Text('Sign In'),
              ),
              SizedBox(height: 20), // Spacing between buttons

              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Sign Up page
                  Navigator.pushNamed(context, '/signUp');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), backgroundColor: Colors.lime.withOpacity(0.5), // Different color for Sign Up button
                ),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
