import 'package:chit_chat/Custom%20UI/chat_card.dart';
import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.chat),
      ),
      body: ListView(
        children: const [
          chatCard(),
          chatCard(),
        ],
      ),
    );
  }
}
