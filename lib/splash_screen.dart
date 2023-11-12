import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/home_screen.dart';
import 'package:weather_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/bg.jpg',
          height: mq.height * 1,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: mq.height * .25,
          right: mq.width * .28,
          child: Image.asset(
            'images/splash_screen.png',
            width: mq.width * .5,
          ),
        ),
        Positioned(
            top: mq.height * .15,
            right: mq.width * .15,
            child: const Text(
              "Weather Application",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: mq.height * .1,
            width: mq.width * .8,
            left: mq.width * .1,
            height: mq.height * .07,
            child: const Text(
              'Developed By Abu Sufian ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19, color: Colors.black54),
            ))
      ],
    ));
  }
}
