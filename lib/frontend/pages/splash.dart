import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:snel_plus_2/frontend/pages/admin/connexion.dart';
import 'package:snel_plus_2/frontend/components/colors/colors.dart';

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
    Future.delayed(const Duration(seconds: 20),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const Connexion(),
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
