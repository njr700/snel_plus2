import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../pages/admin/Formulaire_enregistrement_agent/RegisterAgentPage.dart';
import '../pages/agent/screens/dashboard.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final TextEditingController _matriculeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    String matricule = _matriculeController.text.trim();
    String password = _passwordController.text.trim();

    // Vérifier si les informations sont celles du superuser
    if (matricule == 'superuser' && password == 'superuser') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
      return;
    }
    // else  {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => DashboardScreen()),
    //   );
    // }

    try {
      // Récupérer l'agent avec le numéro matricule
      DocumentSnapshot agentSnapshot = await FirebaseFirestore.instance
          .collection('agents')
          .doc(matricule)
          .get();

      if (agentSnapshot.exists) {
        var agentData = agentSnapshot.data() as Map<String, dynamic>;
        String storedPassword = agentData['password'];
        String type = agentData['type'];

        // Vérifier le mot de passe (Assurez-vous de comparer correctement les mots de passe hachés)
        if (password == storedPassword) {
          if (type == 'admin') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          } else if (type == 'normal') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          }
        } else {
          _showErrorDialog("Mot de passe incorrect");
        }
      } else {
        _showErrorDialog("Numéro matricule incorrect");
      }
    } catch (e) {
      _showErrorDialog("Erreur de connexion");
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Erreur"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Authentification",
              style: GoogleFonts.roboto(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
          ),
          const SizedBox(height: 40),
          TextField(
            controller: _matriculeController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail_outline),
              labelText: "Numéro Matricule",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              labelText: "Mot de passe",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                minimumSize: const Size(200, 50),
              ),
              child: const Text("S'authentifier", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
