import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InvoiceTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau des Factures'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                ),
              ],
            ),
            child: FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance.collection('factures').get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: const CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: const Text('Erreur de chargement'),
                  );
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Mois')),
                        DataColumn(label: Text('Année')),
                        DataColumn(label: Text('Numéro Facture')),
                        DataColumn(label: Text('ID Consommation')),
                        DataColumn(label: Text('Nom Client')),
                        DataColumn(label: Text('Numéro PA')),
                        DataColumn(label: Text('Type Client')),
                        DataColumn(label: Text('Adresse')),
                        DataColumn(label: Text('Index Précédent')),
                        DataColumn(label: Text('Index Actuel')),
                        DataColumn(label: Text('Consommation')),
                        DataColumn(label: Text('Code Tarif')),
                        DataColumn(label: Text('Tarif')),
                        DataColumn(label: Text('Montant')),
                        DataColumn(label: Text('État')),
                        DataColumn(label: Text('Date d\'Édition')),
                      ],
                      rows: [
                        DataRow(cells: List.generate(16, (_) => const DataCell(Text(''))))
                      ],
                    ),
                  );
                }

                final factures = snapshot.data!.docs;

                return Center(
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Mois')),
                      DataColumn(label: Text('Année')),
                      DataColumn(label: Text('Numéro Facture')),
                      DataColumn(label: Text('ID Consommation')),
                      DataColumn(label: Text('Nom Client')),
                      DataColumn(label: Text('Numéro PA')),
                      DataColumn(label: Text('Type Client')),
                      DataColumn(label: Text('Adresse')),
                      DataColumn(label: Text('Index Précédent')),
                      DataColumn(label: Text('Index Actuel')),
                      DataColumn(label: Text('Consommation')),
                      DataColumn(label: Text('Code Tarif')),
                      DataColumn(label: Text('Tarif')),
                      DataColumn(label: Text('Montant')),
                      DataColumn(label: Text('État')),
                      DataColumn(label: Text('Date d\'Édition')),
                    ],
                    rows: factures.map((facture) {
                      return DataRow(cells: [
                        DataCell(Text(facture['mois'] ?? '')),
                        DataCell(Text(facture['annee'] ?? '')),
                        DataCell(Text(facture['numero_facture'] ?? '')),
                        DataCell(Text(facture['id_consommation'] ?? '')),
                        DataCell(Text(facture['nom_client'] ?? '')),
                        DataCell(Text(facture['numero_pa'] ?? '')),
                        DataCell(Text(facture['type_client'] ?? '')),
                        DataCell(Text(facture['adresse'] ?? '')),
                        DataCell(Text(facture['index_precedent'] ?? '')),
                        DataCell(Text(facture['index_actuel'] ?? '')),
                        DataCell(Text(facture['consommation'] ?? '')),
                        DataCell(Text(facture['code_tarif'] ?? '')),
                        DataCell(Text(facture['tarif'] ?? '')),
                        DataCell(Text(facture['montant'] ?? '')),
                        DataCell(Text(facture['etat'] ?? '')),
                        DataCell(Text(facture['date_edition'] ?? '')),
                      ]);
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
