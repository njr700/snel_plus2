import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void showCreateInvoiceDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController(
    text: _formatDate(DateTime.now()), // Date d'émission initiale avec aujourd'hui
  );
  final TextEditingController _invoiceNumberController = TextEditingController(
    text: _generateInvoiceNumber(), // Numéro de facture généré automatiquement
  );
  final TextEditingController _idConsommationController = TextEditingController();
  final TextEditingController _idTarifController = TextEditingController();
  final TextEditingController _etatController = TextEditingController();
  final TextEditingController _montantController = TextEditingController();
  String selectedMonth = _monthName(DateTime.now().month);
  String selectedYear = DateTime.now().year.toString();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Créer une Facture',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blue),
        ),
        content: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: _invoiceNumberController,
                    decoration: InputDecoration(
                      labelText: 'Numéro de Facture',
                      prefixIcon: Icon(Icons.receipt_long, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    readOnly: true, // Le numéro de facture est en lecture seule
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: _idConsommationController,
                    decoration: InputDecoration(
                      labelText: 'ID Consommation',
                      prefixIcon: Icon(Icons.account_box, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer l\'ID consommation';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: _idTarifController,
                    decoration: InputDecoration(
                      labelText: 'ID Tarif',
                      prefixIcon: Icon(Icons.monetization_on, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer l\'ID tarif';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: DropdownButtonFormField<String>(
                    value: selectedYear,
                    decoration: InputDecoration(
                      labelText: 'Année',
                      prefixIcon: Icon(Icons.calendar_today, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    items: List.generate(10, (index) {
                      final year = DateTime.now().year - index;
                      return DropdownMenuItem<String>(
                        value: year.toString(),
                        child: Text(year.toString()),
                      );
                    }),
                    onChanged: (String? newYear) {
                      if (newYear != null) {
                        selectedYear = newYear;
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez sélectionner l\'année';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: DropdownButtonFormField<String>(
                    value: selectedMonth,
                    decoration: InputDecoration(
                      labelText: 'Mois',
                      prefixIcon: Icon(Icons.date_range, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    items: List.generate(12, (index) {
                      final month = index + 1;
                      return DropdownMenuItem<String>(
                        value: _monthName(month),
                        child: Text(_monthName(month)),
                      );
                    }),
                    onChanged: (String? newMonth) {
                      if (newMonth != null) {
                        selectedMonth = newMonth;
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez sélectionner le mois';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: _montantController,
                    decoration: InputDecoration(
                      labelText: 'Montant',
                      prefixIcon: Icon(Icons.money, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer le montant';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: 'Date d\'Émission',
                      prefixIcon: Icon(Icons.calendar_today, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue[900]),
                        onPressed: () async {
                          final DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.parse(_dateController.text),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickedDate != null) {
                            _dateController.text = _formatDate(pickedDate);
                          }
                        },
                      ),
                    ),
                    readOnly: true, // La date est en lecture seule
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: DropdownButtonFormField<String>(
                    value: 'En attente', // Valeur par défaut
                    decoration: InputDecoration(
                      labelText: 'État',
                      prefixIcon: Icon(Icons.info, color: Colors.blue[900]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    items: <String>['Payée', 'Non payée', 'En attente']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        _etatController.text = newValue; // Mise à jour du contrôleur
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez sélectionner un état';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Annuler',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final invoiceData = {
                  'date': _dateController.text,
                  'invoiceNumber': _invoiceNumberController.text,
                  'idConsommation': _idConsommationController.text,
                  'idTarif': _idTarifController.text,
                  'montant': _montantController.text,
                  'etat': _etatController.text,
                  'mois': selectedMonth,
                  'annee': selectedYear,
                };

                // Enregistrer les données dans Firebase Firestore
                FirebaseFirestore.instance.collection('factures').doc('${selectedYear}_${selectedMonth}').set(invoiceData);

                Navigator.of(context).pop(); // Fermer la boîte de dialogue
              }
            },
            child: const Text('Enregistrer'),
          ),
        ],
      );
    },
  );
}

String _generateInvoiceNumber() {
  // Exemple de génération de numéro de facture. À adapter selon votre logique.
  // Cette fonction devrait normalement récupérer le dernier numéro de facture utilisé et incrémenter ce numéro.
  final number = '000001'; // Remplacez cela par la logique d'incrémentation réelle.
  return 'Fac-$number';
}

String _formatDate(DateTime date) {
  return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
}

String _monthName(int month) {
  const months = [
    'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin',
    'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'
  ];
  return months[month - 1];
}
