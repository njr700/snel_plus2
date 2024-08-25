import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ConsommationTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau de Consommation'),
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
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('Consommation').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: const CircularProgressIndicator(),
                  );
                }

                final consommationData = snapshot.data?.docs ?? [];

                return Center(
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('ID Consommation')),
                      DataColumn(label: Text('Date de prélèvement')),
                      DataColumn(label: Text('Nom du client')),
                      DataColumn(label: Text('Numéro du point alimenté')),
                      DataColumn(label: Text('Numéro du compteur')),
                      DataColumn(label: Text('Mois')),
                      DataColumn(label: Text('Année')),
                      DataColumn(label: Text('Index Précédent')),
                      DataColumn(label: Text('Index Actuel')),
                      DataColumn(label: Text('Consommation (kWh)')),
                      DataColumn(label: Text('Numéro Matricule Agent')),
                    ],
                    rows: consommationData.isEmpty
                        ? [for (int i = 0; i < 3; i++) DataRow(cells: [for (int j = 0; j < 11; j++) const DataCell(Text(''))])]
                        : consommationData.map((doc) {
                      final data = doc.data() as Map<String, dynamic>;
                      return DataRow(cells: [
                        DataCell(Text(data['id_consommation'] ?? 'N/A')),
                        DataCell(Text(data['date_prelevement'] ?? 'N/A')),
                        DataCell(Text(data['nom_client'] ?? 'N/A')),
                        DataCell(Text(data['num_point_alimente'] ?? 'N/A')),
                        DataCell(Text(data['num_compteur'] ?? 'N/A')),
                        DataCell(Text(data['mois'] ?? 'N/A')),
                        DataCell(Text(data['annee'] ?? 'N/A')),
                        DataCell(Text(data['index_precedent']?.toString() ?? 'N/A')),
                        DataCell(Text(data['index_actuel']?.toString() ?? 'N/A')),
                        DataCell(Text(data['consommation']?.toString() ?? 'N/A')),
                        DataCell(Text(data['num_matricule_agent'] ?? 'N/A')),
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
