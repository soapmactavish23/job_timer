import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0092B9),
              Color(0xFF0167B2),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
