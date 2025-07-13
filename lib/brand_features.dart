import 'package:flutter/material.dart';

class BrandFeatures extends StatelessWidget {
  const BrandFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> features = ['精準計時', '經典設計', '創新科技', '奧運與太空任務指定'];

    List<Widget> featureWidgets = [];
    for (String feature in features) {
      featureWidgets.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '• $feature',
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.brown[50],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.brown.withValues(),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            '品牌特色',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 10),
          ...featureWidgets,
        ],
      ),
    );
  }
}
