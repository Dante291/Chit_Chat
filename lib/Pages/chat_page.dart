import 'package:chit_chat/Custom%20UI/Models/chat_model.dart';
import 'package:chit_chat/Custom%20UI/chat_card.dart';
import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Parag Gupta",
        image:
            "https://th.bing.com/th/id/OIP.Ofsl01obPBUMm8rmGUDHSQAAAA?rs=1&pid=ImgDetMain",
        isGroup: false,
        time: "3:00",
        currentMessage: "Hello Parag",
        status: "Aur meri jaan",
        id: 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return chatCard(
            chatModel: chats[index],
          );
        },
      ),
    );
  }
}
