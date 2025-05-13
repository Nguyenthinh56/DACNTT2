import 'package:flutter/material.dart';
import 'vegetable_home_screen/widgets/bottom_navigation_bar_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  static Widget builder(BuildContext context) {
    return const HistoryScreen();
  }

  final List<Map<String, String>> historyItems = const [
    {
      'name': 'Rau cải',
      'date': '10/05/2025',
      'image': 'https://via.placeholder.com/100'
    },
    {
      'name': 'Cà chua',
      'date': '09/05/2025',
      'image': 'https://via.placeholder.com/100'
    },
    {
      'name': 'Khoai tây',
      'date': '08/05/2025',
      'image': 'https://via.placeholder.com/100'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử nhận dạng'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          final item = historyItems[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.network(
                item['image']!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(item['name'] ?? ''),
              subtitle: Text('Ngày: ${item['date']}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Optional: Navigate to detail screen
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: 3),
    );
  }
}
