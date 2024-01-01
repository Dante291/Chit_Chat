import 'package:flutter/material.dart';

class chatCard extends StatelessWidget {
  const chatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 25,
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Parag Gupta"), Text("last seen at 3:00")],
      ),
    );
  }
}
