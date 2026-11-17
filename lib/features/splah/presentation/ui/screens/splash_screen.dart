import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg/features/login/presentation/ui/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/icons/Ellipse 1005.svg',
              // color: Colors.black,
            ),
          ),
          Center(child: SvgPicture.asset('assets/icons/Logo.svg')),
          Positioned(
            bottom: 20,
            right: 0,
            child: SvgPicture.asset('assets/icons/Ellipse 1006.svg'),
          ),
        ],
      ),
    );
  }
}
