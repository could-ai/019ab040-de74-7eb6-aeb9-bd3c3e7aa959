import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Game World'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // TODO: Implement profile/login screen navigation
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildFeatureCard(
              context,
              icon: Icons.gamepad,
              title: 'Super Mario Game',
              color: Colors.red,
              routeName: '/game',
            ),
            _buildFeatureCard(
              context,
              icon: Icons.store,
              title: 'Store',
              color: Colors.green,
              routeName: '/store',
            ),
            _buildFeatureCard(
              context,
              icon: Icons.account_balance_wallet,
              title: 'Wallet',
              color: Colors.blue,
              routeName: '/wallet',
            ),
            _buildFeatureCard(
              context,
              icon: Icons.leaderboard,
              title: 'Leaderboard',
              color: Colors.orange,
              routeName: '/leaderboard',
            ),
             _buildFeatureCard(
              context,
              icon: Icons.history,
              title: 'Transactions',
              color: Colors.purple,
              routeName: '/wallet', // Reuse wallet for now
            ),
             _buildFeatureCard(
              context,
              icon: Icons.bar_chart,
              title: 'Statistics',
              color: Colors.teal,
              routeName: '/leaderboard', // Reuse leaderboard for now
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context,
      {required IconData icon,
      required String title,
      required Color color,
      required String routeName}) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: color.withOpacity(0.8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
