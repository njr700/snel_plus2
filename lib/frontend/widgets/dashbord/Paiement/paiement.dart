import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PaiementTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau des Paiements'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Paiement').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          // Récupérer les données de la collection Paiement
          var paiements = snapshot.data!.docs;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('ID Paiement')),
                DataColumn(label: Text('Mode Paiement')),
                DataColumn(label: Text('Date Paiement')),
              ],
              rows: paiements.map((document) {
                return DataRow(cells: [
                  DataCell(Text(document['id_paiement'])),
                  DataCell(Text(document['mode_paiement'])),
                  DataCell(Text(document['date_paiement'].toDate().toString())), // Assurez-vous que la date est bien un `Timestamp` Firebase
                ]);
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
