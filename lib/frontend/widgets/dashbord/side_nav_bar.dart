import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideNavBar extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const SideNavBar({super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blue[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xFF002060),
            width: double.infinity,
            height: 85,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/Snel_float.png',
                  width: 120,
                  height: double.infinity,
                ),
              ),
            ),
          ),
          const Divider(color: Colors.white24),
          NavBarItem(
            label: 'Tableau de bord',
            icon: Icons.dashboard,
            index: 0,
            selectedIndex: selectedIndex,
            onItemTapped: onItemTapped,
          ),
          NavBarItem(
            label: 'Factures',
            icon: Icons.receipt,
            index: 1,
            selectedIndex: selectedIndex,
            onItemTapped: onItemTapped,
          ),
          NavBarItem(
            label: 'Consommation',
            icon: Icons.receipt,
            index: 2,
            selectedIndex: selectedIndex,
            onItemTapped: onItemTapped,
          ),
          NavBarItem(
            label: 'Paiement',
            icon: Icons.payment,
            index: 3,
            selectedIndex: selectedIndex,
            onItemTapped: onItemTapped,
          ),
          // Ajouter d'autres éléments de NavBar si nécessaire...
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final int index;
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBarItem({
    required this.label,
    required this.icon,
    required this.index,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? Colors.yellow : Colors.white70),
            const SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.yellow : Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
