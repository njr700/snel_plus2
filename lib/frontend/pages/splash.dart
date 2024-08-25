import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../components/colors/colors.dart';
import 'admin/connexion.dart';
import 'agent/connexion.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>  Connexion(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bleu,
      body: Center(
        child: Image(
          height: 1060,
          image: Svg('assets/images/Snel.svg'),
        ),
      ),
    );
  }
}
