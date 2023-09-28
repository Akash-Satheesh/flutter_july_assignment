import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: GridView2(),
  ));
}

// ignore: must_be_immutable
class GridView2 extends StatelessWidget {
  var icons = [
    Icons.access_alarm,
    Icons.ad_units_rounded,
    Icons.work_off_rounded,
    Icons.wordpress_sharp,
    Icons.add_circle_sharp,
    Icons.wifi_tethering_error_rounded_sharp,
    Icons.add_moderator_rounded,
    Icons.west_outlined,
    Icons.airline_seat_legroom_extra_rounded,
    Icons.airport_shuttle_outlined
  ];
  GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      icons[index],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Heart Shaker',
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
