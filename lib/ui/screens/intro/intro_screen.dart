import 'package:flutter/material.dart';
import 'package:flutter_feline_ui/ui/screens/login/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 19, 19, 22),
            ),
          ),
          const Positioned(
            left: -15,
            right: -15,
            child: Image(
              image: AssetImage('assets/leon.png'),
            ),
          ),
          // Container(
          //   height: size.height,
          //   width: size.width,
          //   decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
          // ),
          Positioned(
            top: size.height * 0.55,
            left: 0,
            right: 0,
            child: const Text(
              'Discover the most\nwonderful animals\nin ZooTex',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.72,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 650),
                  pageBuilder: (context, animation, _) {
                    return FadeTransition(
                      opacity: animation,
                      child: const LoginScreen(),
                    );
                  },
                ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.amber.shade600, Colors.orange]),
                    borderRadius: BorderRadius.circular(36)),
                child: const Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
