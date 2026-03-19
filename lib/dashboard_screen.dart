import 'package:flutter/material.dart';
import 'dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    final List<DashboardCard> cards = [
      const DashboardCard(
        titulo: 'Treinos esta semana',
        valor: '5',
        icone: Icons.fitness_center,
        cor: Color(0xFF26A69A),
      ),
      const DashboardCard(
        titulo: 'Calorias queimadas',
        valor: '2.340 kcal',
        icone: Icons.local_fire_department,
        cor: Color(0xFFEF5350),
      ),
      const DashboardCard(
        titulo: 'Peso atual',
        valor: '72,5 kg',
        icone: Icons.monitor_weight,
        cor: Color(0xFF5C6BC0),
      ),
      const DashboardCard(
        titulo: 'Meta mensal',
        valor: '80%',
        icone: Icons.flag,
        cor: Color(0xFF66BB6A),
      ),
    ];

    Widget layout;

    if (width < 600) {
      // 📱 Mobile: 1 card por linha
      layout = Column(
        children: cards,
      );
    } else if (width < 900) {
      // 💻 Tablet: 2 cards por linha (grid 2x2)
      layout = Wrap(
        children: cards.map((card) => SizedBox(
          width: (width / 2) - 16,
          height: 180,
          child: card,
        )).toList(),
      );
    } else {
      // 🖥️ Desktop: 4 cards na mesma linha
      layout = Row(
        children: cards.map((card) => Expanded(child: card)).toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Saúde 🏋️'),
        backgroundColor: const Color(0xFF26A69A),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: layout,
      ),
    );
  }
}
