import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class chatCard extends StatelessWidget {
  const chatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 62,
          child: ListTile(
            leading: CircleAvatar(
              radius: 27,
              child: SvgPicture.asset(
                'assets/groups_white_36dp.svg',
                height: 37,
                width: 37,
              ),
            ),
            title: const Text(
              "Parag Gupta",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: const Row(children: [
              Icon(
                Icons.done_all,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Hello Parag",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ]),
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black12,
          endIndent: 20,
          indent: 80,
        ),
      ],
    );
  }
}
