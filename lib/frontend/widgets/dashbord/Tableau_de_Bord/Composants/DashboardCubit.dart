import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DashboardCubit extends Cubit<Map<String, double>> {
  DashboardCubit() : super({});

  void fetchConsommations() async {
    final snapshot = await FirebaseFirestore.instance.collection('Consommation').get();
    final data = snapshot.docs.fold<Map<String, double>>({}, (map, doc) {
      final docData = doc.data();
      final mois = docData['mois'] as String?;
      final consommation = double.tryParse(docData['consommation']?.toString() ?? '0') ?? 0;

      if (mois != null) {
        map[mois] = (map[mois] ?? 0) + consommation;
      }
      return map;
    });
    emit(data);
  }

  void fetchPaiements() async {
    final snapshot = await FirebaseFirestore.instance.collection('paiements').get();
    final data = snapshot.docs.fold<Map<String, double>>({}, (map, doc) {
      final docData = doc.data();
      final mois = docData['mois'] as String?;
      final montant = double.tryParse(docData['montant']?.toString() ?? '0') ?? 0;

      if (mois != null) {
        map[mois] = (map[mois] ?? 0) + montant;
      }
      return map;
    });
    emit(data);
  }
}
