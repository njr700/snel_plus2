import 'package:flutter/material.dart';

import '../../../widgets/dashbord/Consommation/Consommation_table.dart';
import '../../../widgets/dashbord/Facture_menu/invoice_table.dart';
import '../../../widgets/dashbord/Paiement/paiement.dart';
import '../../../widgets/dashbord/Tableau_de_Bord/tableu_de_bord.dart';
import '../../../widgets/dashbord/side_nav_bar.dart';
import '../../../widgets/dashbord/top_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Garder une trace de l'index sélectionné
  int _selectedIndex = 0;

  // Méthode pour mettre à jour l'index sélectionné
  void _onNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Widget à retourner en fonction de l'index sélectionné
  Widget _getSelectedScreen() {
    switch (_selectedIndex) {
      case 0:
        return DashboardPage(); // Afficher le tableau de bord
      case 1:
        return InvoiceTable(); // Afficher les factures
      case 2:
        return ConsommationTable(); // Afficher la consommation
      case 3:
        return PaiementTableView(); // Afficher le paiement
      default:
        return const Center(child: Text("Bienvenue sur le tableau de bord")); // Écran par défaut
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002060), // Définir la couleur du fond
      body: Row(
        children: [
          // Barre de navigation latérale
          SideNavBar(
            onItemTapped: _onNavBarItemTapped,
            selectedIndex: _selectedIndex, // Passer l'index sélectionné
          ),

          // Zone de contenu principal
          Expanded(
            child: Column(
              children: [
                // Barre de navigation supérieure
                TopNavBar(index: _selectedIndex), // Passer l'index sélectionné

                // Contenu principal - Dynamique en fonction de l'écran sélectionné
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _getSelectedScreen(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
