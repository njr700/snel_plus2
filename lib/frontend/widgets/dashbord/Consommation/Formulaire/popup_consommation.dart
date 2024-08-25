import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PopupConsommation extends StatefulWidget {
  @override
  _PopupConsommationState createState() => _PopupConsommationState();
}

class _PopupConsommationState extends State<PopupConsommation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controllers pour chaque champ
  final TextEditingController _idConsommationController = TextEditingController();
  final TextEditingController _datePrelevementController = TextEditingController();
  final TextEditingController _nomClientController = TextEditingController();
  final TextEditingController _numPaController = TextEditingController();
  final TextEditingController _numCompteurController = TextEditingController();
  final TextEditingController _moisController = TextEditingController();
  final TextEditingController _anneeController = TextEditingController();
  final TextEditingController _indexPrecedentController = TextEditingController();
  final TextEditingController _indexActuelController = TextEditingController();
  final TextEditingController _consommationController = TextEditingController();
  final TextEditingController _numMatriculeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeFields();
  }

  void _initializeFields() {
    _idConsommationController.text = _generateIdConsommation();
    _datePrelevementController.text = DateTime.now().toString().split(' ')[0]; // Date du jour
    _moisController.text = _getCurrentMonth();
    _anneeController.text = DateTime.now().year.toString();
    _numMatriculeController.text = _getAgentMatricule(); // Prend le matricule de l'agent connecté
    _fetchPreviousIndex(); // Récupère l'index précédent
  }

  String _generateIdConsommation() {
    // Génère un Id consommation unique (à incrémenter dans un cas réel)
    return "IDCONSO-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}";
  }

  String _getCurrentMonth() {
    final moisIndex = DateTime.now().month - 1; // Les mois en Dart commencent à 0
    final mois = _getMonthItems()[moisIndex];
    return mois;
  }

  String _getAgentMatricule() {
    // Simule le matricule de l'agent connecté (à remplacer par la logique réelle)
    return "MATRICULE-001";
  }

  void _fetchPreviousIndex() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('Consommation')
          .where('num_point_alimente', isEqualTo: _numPaController.text)
          .orderBy('date_prelevement', descending: true)
          .limit(1)
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();
        _indexPrecedentController.text = data['index_actuel'].toString();
      } else {
        _indexPrecedentController.text = "0"; // Si aucun index précédent
      }
    } catch (e) {
      print("Erreur lors de la récupération de l'index précédent : $e");
      _indexPrecedentController.text = "0"; // Valeur par défaut en cas d'erreur
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Consommation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(20),
                _buildRow(
                  context,
                  [
                    _buildTextField('Id Consommation', controller: _idConsommationController, enabled: false),
                    _buildTextField('Date de prélevement', controller: _datePrelevementController, enabled: false),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Nom client', controller: _nomClientController, enabled: false),
                    _buildTextField('Numéro PA', controller: _numPaController, onChanged: _onPaChanged),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Numéro compteur', controller: _numCompteurController, enabled: false),
                    _buildDropdownField('Mois', controller: _moisController, items: _getMonthItems()),
                    _buildTextField('Année', controller: _anneeController, enabled: false),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Index précédent', controller: _indexPrecedentController, enabled: false),
                    _buildTextField('Index actuel', controller: _indexActuelController, onChanged: _onIndexActuelChanged),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Consommation', controller: _consommationController, enabled: false),
                    _buildTextField('Numero matricule', controller: _numMatriculeController, enabled: false),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Annuler'),
                    ),
                    const Gap(10),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Logique pour enregistrer les données
                          await _saveDataToFirestore();
                          Navigator.pop(context); // Fermer la boîte de dialogue après enregistrement
                        }
                      },
                      child: const Text('Enregistrer'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onPaChanged(String value) async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('Client')
          .where('id_client', isEqualTo: value) // Utilisez 'id_client' pour filtrer
          .limit(1)
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();
        _nomClientController.text = data['nom'] ?? 'Inconnu';
        _numCompteurController.text = data['num_compteur'] ?? 'Inconnu';
        _fetchPreviousIndex(); // Récupère l'index précédent
      } else {
        _nomClientController.text = 'Inconnu';
        _numCompteurController.text = 'Inconnu';
      }
    } catch (e) {
      print("Erreur lors de la récupération des données client : $e");
      _nomClientController.text = 'Inconnu';
      _numCompteurController.text = 'Inconnu';
    }
  }

  void _onIndexActuelChanged(String value) {
    final indexActuel = int.tryParse(value) ?? 0;
    final indexPrecedent = int.tryParse(_indexPrecedentController.text) ?? 0;
    _consommationController.text = (indexActuel - indexPrecedent).toString();
  }

  Future<void> _saveDataToFirestore() async {
    try {
      final consommationData = {
        'id_consommation': _idConsommationController.text,
        'date_prelevement': _datePrelevementController.text,
        'nom_client': _nomClientController.text,
        'num_point_alimente': _numPaController.text,
        'num_compteur': _numCompteurController.text,
        'mois': _moisController.text,
        'annee': _anneeController.text,
        'index_precedent': int.parse(_indexPrecedentController.text),
        'index_actuel': int.parse(_indexActuelController.text),
        'consommation': int.parse(_consommationController.text),
        'num_matricule_agent': _numMatriculeController.text,
      };

      await FirebaseFirestore.instance.collection('Consommation').add(consommationData);

      print("Les données ont été enregistrées avec succès.");
    } catch (e) {
      print("Erreur lors de l'enregistrement des données : $e");
    }
  }

  Widget _buildRow(BuildContext context, List<Widget> children) {
    return Row(
      children: children.map((child) => Expanded(child: child)).toList(),
    );
  }

  Widget _buildTextField(String label, {required TextEditingController controller, bool enabled = true, void Function(String)? onChanged}) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      decoration: InputDecoration(labelText: label),
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Ce champ est requis';
        }
        return null;
      },
    );
  }

  Widget _buildDropdownField(String label, {required TextEditingController controller, required List<String> items}) {
    return DropdownButtonFormField<String>(
      value: controller.text,
      decoration: InputDecoration(labelText: label),
      items: items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
      onChanged: (value) {
        if (value != null) {
          controller.text = value;
        }
      },
    );
  }

  List<String> _getMonthItems() {
    return ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'];
  }
}
