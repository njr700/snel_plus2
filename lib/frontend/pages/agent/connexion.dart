import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/auth_form.dart';

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Side - Logo
          Expanded(
            child: Container(
              color: Color(0xFF002060), // Deep blue color
              child: Center(
                child:  SvgPicture.asset(
                  'assets/images/Snel.svg', // Chemin de votre fichier SVG
                  width: 250,
                ),
              ),
            ),
          ),

          // Right Side - Form
          const Expanded(
            child: AuthForm(),
          ),
        ],
      ),
    );
  }
}
