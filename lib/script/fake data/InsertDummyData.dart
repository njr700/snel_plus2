import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class InsertDummyData extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _insertDummyData() async {
    try {
      // List of possible data
      List<String> nomsAgents = ['Doe', 'Smith', 'Johnson', 'Brown', 'Williams'];
      List<String> prenomsAgents = ['John', 'Jane', 'Alice', 'Bob', 'Charlie'];
      List<String> adresses = ['123 Main St', '456 Elm St', '789 Maple St', '321 Oak St', '654 Pine St'];
      List<String> telephones = ['+243900000000', '+243811111111', '+243822222222', '+243833333333', '+243844444444'];
      List<String> emails = ['email1@example.com', 'email2@example.com', 'email3@example.com', 'email4@example.com', 'email5@example.com'];
      List<String> motsDePasse = ['password1', 'password2', 'password3', 'password4', 'password5'];
      List<String> nomsClients = ['Miller', 'Davis', 'Garcia', 'Martinez', 'Robinson'];
      List<String> prenomsClients = ['James', 'Linda', 'Michael', 'Sarah', 'William'];
      List<String> categoriesTarifaires = ['Domestique', 'Commercial', 'Industriel'];
      Random random = Random();

      // Insert multiple Type d'Agent
      for (int i = 0; i < 3; i++) {
        await _firestore.collection('TypeAgent').add({
          'id_type_agent': (i + 1).toString(),
          'nom_type': 'Type $i',
        });
      }

      // Insert multiple Agents
      for (int i = 0; i < 5; i++) {
        await _firestore.collection('Agent').add({
          'num_matricule': 'AG00${i + 1}',
          'nom': nomsAgents[i],
          'prenom': prenomsAgents[i],
          'adresse': adresses[i],
          'telephone': telephones[i],
          'email': emails[i],
          'mot_de_passe': motsDePasse[i],
          'id_type_agent': random.nextInt(3) + 1, // Random Type d'Agent
        });
      }

      // Insert multiple Type Client
      for (int i = 0; i < 3; i++) {
        await _firestore.collection('TypeClient').add({
          'id_typeclient': (i + 1).toString(),
          'nom_typeclient': 'Client Type $i',
        });
      }

      // Insert multiple Clients
      for (int i = 0; i < 5; i++) {
        await _firestore.collection('Client').add({
          'id_client': 'CL00${i + 1}',
          'nom': nomsClients[i],
          'prenom': prenomsClients[i],
          'adresse': adresses[i],
          'telephone': telephones[i],
          'email': emails[i],
          'mot_de_passe': motsDePasse[i],
          'id_typeclient': random.nextInt(3) + 1, // Random Type Client
        });
      }

      // Insert multiple CVS
      for (int i = 0; i < 3; i++) {
        await _firestore.collection('CVS').add({
          'num_cvs': 'CVS00${i + 1}',
          'nom_cvs': 'Poste de Consommation $i',
          'adresse': adresses[i],
        });
      }

      // Insert multiple Consommation
      for (int i = 0; i < 5; i++) {
        await _firestore.collection('Consommation').add({
          'id_consommation': 'CONSO00${i + 1}',
          'id_client': 'CL00${i + 1}',
          'num_point_alimente': 'PA00${i + 1}',
          'num_compteur': 'CP00${i + 1}',
          'index_precedent': 1000 + i * 100,
          'index_actuel': 1050 + i * 100,
          'mois': 'Août',
          'annee': 2024,
          'date_prelevement': DateTime.now(),
        });
      }

      // Insert multiple Categorie Tarifaire
      for (int i = 0; i < 3; i++) {
        await _firestore.collection('CategorieTarifaire').add({
          'id_categorie': 'CT00${i + 1}',
          'nom_categorie': categoriesTarifaires[i],
        });
      }

      // Insert multiple Tarifs
      for (int i = 0; i < 3; i++) {
        await _firestore.collection('Tarif').add({
          'id_tarif': 'TAR00${i + 1}',
          'id_categorie': 'CT00${i + 1}',
          'prix_unitaire': 0.1 + i * 0.05,
          'debut': DateTime(2024, 1, 1),
          'fin': DateTime(2024, 12, 31),
        });
      }

      // Insert multiple Factures
      for (int i = 0; i < 5; i++) {
        await _firestore.collection('Facture').add({
          'num_facture': 'FAC00${i + 1}',
          'id_consommation': 'CONSO00${i + 1}',
          'id_tarif': 'TAR00${i + 1}',
          'montant': (1000 + i * 100) * 0.1 + i * 0.05,
          'statut': i % 2 == 0 ? 'Payée' : 'Non payée',
          'date_emission': DateTime.now(),
        });
      }

      // Insert multiple Paiements
      for (int i = 0; i < 5; i++) {
        await _firestore.collection('Paiement').add({
          'id_paiement': 'PAY00${i + 1}',
          'num_facture': 'FAC00${i + 1}',
          'montant': 100.0 + i * 50,
          'date_paiement': DateTime.now(),
        });
      }

      print('Données fictives insérées avec succès !');
    } catch (e) {
      print('Erreur lors de l\'insertion des données fictives : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insérer des données fictives'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _insertDummyData,
          child: const Text('Insérer des données'),
        ),
      ),
    );
  }
}
