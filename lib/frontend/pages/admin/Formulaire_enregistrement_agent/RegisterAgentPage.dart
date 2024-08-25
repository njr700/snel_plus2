import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../agent/connexion.dart';

class RegisterAgentPage extends StatefulWidget {
  @override
  _RegisterAgentPageState createState() => _RegisterAgentPageState();
}

class _RegisterAgentPageState extends State<RegisterAgentPage> {
  final TextEditingController _matriculeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _type = 'normal';

  void _registerAgent() async {
    String matricule = _matriculeController.text.trim();
    String password = _passwordController.text.trim();

    print('Matricule: $matricule');
    print('Password: $password');

    if (matricule.isNotEmpty && password.isNotEmpty) {
      try {
        await FirebaseFirestore.instance.collection('agents').doc(matricule).set({
          'password': password,
          'type': _type,
        });

        _showConfirmationDialog(context, "Agent enregistré avec succès");
      } catch (e) {
        print('Erreur lors de l\'enregistrement: $e');
        _showErrorDialog(context, "Erreur lors de l'enregistrement");
      }
    } else {
      _showErrorDialog(context, "Tous les champs sont obligatoires");
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
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

  void _showConfirmationDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Succès"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Close the current page
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enregistrer un nouvel agent"),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Enregistrement d'un Agent",
                      style: GoogleFonts.roboto(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _matriculeController,
                    decoration: InputDecoration(
                      labelText: "Numéro Matricule",
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.badge, color: Colors.blue[900]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Mot de Passe",
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.blue[900]),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    value: _type,
                    decoration: InputDecoration(
                      labelText: "Type d'Agent",
                      labelStyle: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.blue[900],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.person, color: Colors.blue[900]),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "normal",
                        child: Text("Normal"),
                      ),
                      DropdownMenuItem(
                        value: "admin",
                        child: Text("Admin"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _type = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: _registerAgent,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      icon: const Icon(Icons.save, color: Colors.white),
                      label: Text(
                        "Enregistrer l'agent",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => Connexion(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[700],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      label: Text(
                        "Retour",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
