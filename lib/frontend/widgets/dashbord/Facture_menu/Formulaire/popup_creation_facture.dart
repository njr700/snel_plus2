import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:typed_data';



class PopupCreationFacture extends StatefulWidget {
  @override
  _PopupCreationFactureState createState() => _PopupCreationFactureState();
}

class _PopupCreationFactureState extends State<PopupCreationFacture> {
  final TextEditingController _moisController = TextEditingController();
  final TextEditingController _anneeController = TextEditingController();
  final TextEditingController _numeroFactureController = TextEditingController();
  final TextEditingController _centreController = TextEditingController();
  final TextEditingController _idConsommationController = TextEditingController();
  final TextEditingController _nomClientController = TextEditingController();
  final TextEditingController _numeroPAController = TextEditingController();
  final TextEditingController _typeClientController = TextEditingController();
  final TextEditingController _numeroCompteurController = TextEditingController();
  final TextEditingController _adresseController = TextEditingController();
  final TextEditingController _cabineController = TextEditingController();
  final TextEditingController _indexPrecedentController = TextEditingController();
  final TextEditingController _indexActuelController = TextEditingController();
  final TextEditingController _consommationController = TextEditingController();
  final TextEditingController _rabaisController = TextEditingController();
  final TextEditingController _trancheTarifaireController = TextEditingController();
  final TextEditingController _kwhFactureController = TextEditingController();
  final TextEditingController _codeTarifController = TextEditingController();
  final TextEditingController _tarifController = TextEditingController();
  final TextEditingController _interpretationReleveController = TextEditingController();
  final TextEditingController _valeurController = TextEditingController();
  final TextEditingController _eclairagePublicController = TextEditingController();
  final TextEditingController _tvaController = TextEditingController();
  final TextEditingController _montantController = TextEditingController();
  final TextEditingController _dateEditionController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _etatValue = 'En attente';

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
                    'Création Facture',
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
                    _buildTextField('Mois', controller: _moisController),
                    _buildTextField('Année', controller: _anneeController),
                    const Gap(10),
                    _buildTextField('N° Facture', controller: _numeroFactureController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Centre', controller: _centreController),
                    _buildTextField('id Consommation', controller: _idConsommationController, enabled: true),
                    _buildTextField('Nom du client', controller: _nomClientController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('N° PA', controller: _numeroPAController),
                    _buildTextField('Type client', controller: _typeClientController),
                    _buildTextField('N° Compteur', controller: _numeroCompteurController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Adresse', controller: _adresseController),
                    _buildTextField('Cabine', controller: _cabineController),
                    _buildTextField('Index precedent', controller: _indexPrecedentController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Index actuel', controller: _indexActuelController),
                    _buildTextField('Consommation', controller: _consommationController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Rabais', controller: _rabaisController),
                    _buildTextField('Tranche Tarifaire', controller: _trancheTarifaireController),
                    _buildTextField('Kwh Facturé', controller: _kwhFactureController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Code Tarif', controller: _codeTarifController, enabled: true),
                    _buildTextField('Tarif', controller: _tarifController),
                    _buildTextField('Interpretation Releve', controller: _interpretationReleveController),
                  ],
                ),
                const Gap(10),
                _buildRow(
                  context,
                  [
                    _buildTextField('Valeur', controller: _valeurController),
                    _buildTextField('Eclairage Public', controller: _eclairagePublicController),
                    _buildTextField('TVA', controller: _tvaController),
                    _buildTextField('Montant', controller: _montantController),
                  ],
                ),
                const Gap(10),
                _buildDropdownField('État', [
                  'En attente',
                  'Payée',
                  'Non payée',
                ]),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: _buildTextField("Date d'édition", controller: _dateEditionController),
                    ),
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
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              _saveFacture();
                              _generateAndSavePDF();
                            }
                          },
                          child: const Text('Enregistrer'),
                        ),
                      ],
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

  Widget _buildRow(BuildContext context, List<Widget> children) {
    return Row(
      children: children.expand((widget) => [Expanded(child: widget), const Gap(10)]).toList()..removeLast(),
    );
  }

  Widget _buildTextField(String label, {required TextEditingController controller, bool enabled = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        enabled: enabled,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Ce champ est requis';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: DropdownButtonFormField<String>(
        value: _etatValue,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(Icons.info, color: Colors.blue[900]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _etatValue = newValue;
          });
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Veuillez sélectionner un état';
          }
          return null;
        },
      ),
    );
  }

  void _fetchDataByIdConsommation() async {
    final idConsommation = _idConsommationController.text;

    if (idConsommation.isNotEmpty) {
      try {
        // Initialize Firebase if not already initialized
        await Firebase.initializeApp();

        // Fetch data from Firestore
        final docSnapshot = await FirebaseFirestore.instance
            .collection('consommations')
            .doc(idConsommation)
            .get();

        if (docSnapshot.exists) {
          final data = docSnapshot.data() as Map<String, dynamic>;

          setState(() {
            _centreController.text = data['centre'] ?? '';
            _nomClientController.text = data['nom_client'] ?? '';
            _numeroPAController.text = data['numero_pa'] ?? '';
            _typeClientController.text = data['type_client'] ?? '';
            _numeroCompteurController.text = data['numero_compteur'] ?? '';
            _adresseController.text = data['adresse'] ?? '';
            _cabineController.text = data['cabine'] ?? '';
            _indexPrecedentController.text = data['index_precedent'] ?? '';
            _indexActuelController.text = data['index_actuel'] ?? '';
            _consommationController.text = data['consommation'] ?? '';
            _rabaisController.text = data['rabais'] ?? '';
            _trancheTarifaireController.text = data['tranche_tarifaire'] ?? '';
            _kwhFactureController.text = data['kwh_facture'] ?? '';
            _codeTarifController.text = data['code_tarif'] ?? '';
            _tarifController.text = data['tarif'] ?? '';
            _interpretationReleveController.text = data['interpretation_releve'] ?? '';
            _valeurController.text = data['valeur'] ?? '';
            _eclairagePublicController.text = data['eclairage_public'] ?? '';
            _tvaController.text = data['tva'] ?? '';
            _montantController.text = data['montant'] ?? '';
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Données récupérées avec succès')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Aucune donnée trouvée pour cet ID')),
          );
        }
      } catch (e) {
        print('Erreur lors de la récupération des données : $e');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erreur lors de la récupération des données')),
        );
      }
    }
  }

  void _saveFacture() async {
    final factureData = {
      'mois': _moisController.text,
      'annee': _anneeController.text,
      'numero_facture': _numeroFactureController.text,
      'centre': _centreController.text,
      'id_consommation': _idConsommationController.text,
      'nom_client': _nomClientController.text,
      'numero_pa': _numeroPAController.text,
      'type_client': _typeClientController.text,
      'numero_compteur': _numeroCompteurController.text,
      'adresse': _adresseController.text,
      'cabine': _cabineController.text,
      'index_precedent': _indexPrecedentController.text,
      'index_actuel': _indexActuelController.text,
      'consommation': _consommationController.text,
      'rabais': _rabaisController.text,
      'tranche_tarifaire': _trancheTarifaireController.text,
      'kwh_facture': _kwhFactureController.text,
      'code_tarif': _codeTarifController.text,
      'tarif': _tarifController.text,
      'interpretation_releve': _interpretationReleveController.text,
      'valeur': _valeurController.text,
      'eclairage_public': _eclairagePublicController.text,
      'tva': _tvaController.text,
      'montant': _montantController.text,
      'etat': _etatValue,
      'date_edition': _dateEditionController.text,

    };

    try {
      // Initialize Firebase if not already initialized
      // await Firebase.initializeApp();

      // Save data to Firestore
      await FirebaseFirestore.instance.collection('factures').add(factureData);
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Facture enregistrée avec succès')),
      );
    } catch (e) {
      print('Erreur lors de l\'enregistrement : $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erreur lors de l\'enregistrement')),
      );
    }
  }


// Fonction pour générer le PDF et le sauvegarder
  Future<void> _generateAndSavePDF() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Facture', style: const pw.TextStyle(fontSize: 24)),
              pw.SizedBox(height: 20),
              pw.Text('Nom du client: ${_nomClientController.text}'),
              pw.Text('Numéro de PA: ${_numeroPAController.text}'),
              pw.Text('Type de client: ${_typeClientController.text}'),
              pw.Text('Numéro de compteur: ${_numeroCompteurController.text}'),
              pw.Text('Adresse: ${_adresseController.text}'),
              pw.Text('Consommation: ${_consommationController.text} kWh'),
              pw.Text('Montant: ${_montantController.text}'),
              pw.SizedBox(height: 20),
              pw.Text('Merci pour votre paiement.'),
            ],
          );
        },
      ),
    );

    try {
      // Convertir le PDF en Uint8List
      final Uint8List pdfData = await pdf.save();

      // Créer une référence dans Firebase Storage
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('factures/${DateTime.now().millisecondsSinceEpoch}.pdf');

      // Télécharger le PDF sur Firebase Storage
      await storageRef.putData(pdfData);

      // Obtenir l'URL de téléchargement du PDF
      final pdfUrl = await storageRef.getDownloadURL();

      // Sauvegarder l'URL du PDF dans Firestore
      final factureData = {
        // Ajoute ici les autres champs de ta facture
        'pdf_url': pdfUrl, // Ajouter l'URL du PDF
      };

      await FirebaseFirestore.instance.collection('factures').add(factureData);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Facture enregistrée et PDF généré avec succès')),
      );
    } catch (e) {
      print('Erreur lors de la génération ou de l\'enregistrement du PDF : $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erreur lors de la génération ou de l\'enregistrement du PDF')),
      );
    }
  }
}
