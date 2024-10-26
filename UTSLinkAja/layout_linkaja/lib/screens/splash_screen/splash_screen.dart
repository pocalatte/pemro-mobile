import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../main.dart';
import '../homepage/homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Future.microtask(() {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const CustomBottomNavBarWidget()), // Navigate to the main app
                  (route) => false,
            );
          });
        }

        return Scaffold(
          body: Stack(
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: snapshot.connectionState == ConnectionState.done ? 0.0 : 1.0,
                child: Image.asset('assets/background.png', fit: BoxFit.cover),
              ),
            ],
          ),
        );
      },
    );
  }
}
