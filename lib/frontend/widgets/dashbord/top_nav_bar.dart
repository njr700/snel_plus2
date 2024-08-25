import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Consommation/Formulaire/popup_consommation.dart';
import 'Facture_menu/Formulaire/invoice_form.dart';
import 'Facture_menu/Formulaire/popup_creation_facture.dart';

class TopNavBar extends StatefulWidget {
  final int index;

  const TopNavBar({super.key, required this.index});

  @override
  _TopNavBarState createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];

  void _search() async {
    String query = _searchController.text;
    if (query.isEmpty) return;

    CollectionReference collection;
    switch (widget.index) {
      case 1:
        collection = FirebaseFirestore.instance.collection('factures');
        break;
      case 2:
        collection = FirebaseFirestore.instance.collection('consommation');
        break;
      case 3:
        collection = FirebaseFirestore.instance.collection('paiement');
        break;
      default:
        return;
    }

    QuerySnapshot querySnapshot = await collection
        .where('fields', arrayContains: query) // Assuming you're searching in specific fields
        .get();

    setState(() {
      _searchResults = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      color: const Color(0xFF002060),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'SNEL PLUS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                    height: 47,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Rechercher',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onChanged: (value) {
                        _search();
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png'),
                    radius: 20,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (widget.index == 1) {
                    showDialog(
                      context: context,
                      builder: (context) => PopupCreationFacture(),
                    );
                  } else if (widget.index == 2) {
                    showDialog(
                      context: context,
                      builder: (context) => PopupConsommation(),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  minimumSize: const Size(200, 50),
                ),
                child: const Text(
                  "Créer",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          if (_searchResults.isNotEmpty) ...[
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  var item = _searchResults[index];
                  return ListTile(
                    title: Text(item['title'] ?? 'No title'),
                    subtitle: Text(item['description'] ?? 'No description'),
                    // Ajoute plus de détails selon ta structure de données
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }
}
