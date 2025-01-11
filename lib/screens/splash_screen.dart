import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

import '../consts/consts.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Initial state for height animation
  double _height = 0.0;

  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
    // Set the height for animation after a delay
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _height = MediaQuery.of(context).size.height * 0.3;
      });
    });
  }

  void _navigateToHomeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          height: _height,
          width: _height,
          curve: Curves.easeInOut,
          child: SvgPicture.asset(
            "assets/images/$logoImg", // Path to your SVG file
            height: size.height * 0.3,
          ),
        ),
      ),
    );
  }
}
