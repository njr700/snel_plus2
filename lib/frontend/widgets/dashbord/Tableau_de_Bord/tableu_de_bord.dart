import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'Composants/DashboardCubit.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit()..fetchConsommations()..fetchPaiements(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tableau de Bord'),
        ),
        body: BlocBuilder<DashboardCubit, Map<String, double>>(
          builder: (context, data) {
            final consommationData = context.read<DashboardCubit>().state;
            final paiementData = context.read<DashboardCubit>().state;

            final consommationEntries = consommationData.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
            final paiementEntries = paiementData.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Graphique des Consommations
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 10),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Consommations par Mois',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          height: 300,
                          child: LineChart(
                            LineChartData(
                              lineBarsData: [
                                LineChartBarData(
                                  spots: consommationEntries
                                      .map((entry) => FlSpot(
                                    consommationEntries.indexOf(entry).toDouble(),
                                    entry.value,
                                  ))
                                      .toList(),
                                  isCurved: true,
                                  color: Colors.blue,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(show: false),
                                ),
                              ],
                              titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 40,
                                    getTitlesWidget: (value, meta) {
                                      // Vérifier si l'index est valide
                                      if (value.toInt() < 0 || value.toInt() >= consommationEntries.length) {
                                        return const SizedBox.shrink(); // Retourner un widget vide si l'index est invalide
                                      }
                                      final index = consommationEntries[value.toInt()].key;
                                      return Text(index);
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 40,
                                    getTitlesWidget: (value, meta) {
                                      return Text(value.toString());
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(show: true),
                              gridData: FlGridData(show: true),
                              lineTouchData: LineTouchData(enabled: false),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  // Graphique des Paiements
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 10),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Paiements par Mois',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          height: 300,
                          child: BarChart(
                            BarChartData(
                              barGroups: paiementEntries
                                  .map((entry) => BarChartGroupData(
                                x: paiementEntries.indexOf(entry),
                                barRods: [
                                  BarChartRodData(
                                    toY: entry.value,
                                    color: Colors.green,
                                    width: 20,
                                  ),
                                ],
                              ))
                                  .toList(),
                              titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 40,
                                    getTitlesWidget: (value, meta) {
                                      // Vérifier si l'index est valide
                                      if (value.toInt() < 0 || value.toInt() >= paiementEntries.length) {
                                        return const SizedBox.shrink(); // Retourner un widget vide si l'index est invalide
                                      }
                                      final index = paiementEntries[value.toInt()].key;
                                      return Text(index);
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 40,
                                    getTitlesWidget: (value, meta) {
                                      return Text(value.toString());
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(show: true),
                              gridData: FlGridData(show: true),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
