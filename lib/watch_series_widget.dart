import 'package:flutter/material.dart';
import 'package:flutter_omega_watch/watch_series_item.dart';

class WatchSeriesWidget extends StatelessWidget {
  const WatchSeriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> watchSeries = [
      {
        'name': 'Speedmaster',
        'imagePath': 'assets/omega-speedmaster-moonwatch.png',
      },

      {
        'name': 'Seamaster',
        'imagePath': 'assets/omega-seamaster-diver-300m.png',
      },

      {
        'name': 'Constellation',
        'imagePath':
            'https://www.reeds.com/media/catalog/product/cache/497a82b708ed80bbd921bd11008f2bd1/o/m/omega_constellation_co-axial_master_chronometer_green_meteorite_dial_stainless_steel_watch_41mm-o13130412199002-1-20447157-hx321b486d_1.jpg',
      },

      {
        'name': 'De Ville',
        'imagePath':
            'https://www.world-wrist-watch.com/uploads/watch/3/1/31007/Watch_31007.jpg',
      },

      {
        'name': 'Planet Ocean',
        'imagePath':
            'https://www.arlini.it/9860-large_default/omega-planet-ocean-600m-coaxial-master-chronometer-chronograph-455-mm.jpg',
      },
    ];

    return Column(
      children: [
        const Text(
          '經典系列',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: watchSeries.length,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: WatchSeriesItem(
                  name: watchSeries[index]['name']!,
                  imagePath: watchSeries[index]['imagePath']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
