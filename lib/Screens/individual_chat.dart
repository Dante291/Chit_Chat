// ignore_for_file: file_names

import 'package:chit_chat/Custom%20UI/Models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndividualChatScreen extends StatefulWidget {
  const IndividualChatScreen({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualChatScreen> createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 180, 247),
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              widget.chatModel.image.isNotEmpty
                  ? CircleAvatar(
                      backgroundImage: NetworkImage(widget.chatModel.image),
                      backgroundColor: Colors.purple,
                      radius: 20,
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 20,
                      child: SvgPicture.asset(
                        widget.chatModel.isGroup
                            ? 'assets/groups_white_36dp.svg'
                            : 'assets/person_white_36dp.svg',
                        height: 37,
                        width: 37,
                      ),
                    ),
            ],
          ),
        ),
        title: Container(
          margin: const EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chatModel.name,
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Last Seen today at 3:02",
                style: TextStyle(fontSize: 13, fontFamily: "OpenSans"),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          PopupMenuButton<String>(
            padding: const EdgeInsets.all(0),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                const PopupMenuItem(
                  value: "View Contact",
                  child: Text("View Contact"),
                ),
                const PopupMenuItem(
                  value: "Media, links, and docs",
                  child: Text("Media, links, and docs"),
                ),
                const PopupMenuItem(
                  value: "Whatsapp Web",
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  value: "Search",
                  child: Text("Search"),
                ),
                const PopupMenuItem(
                  value: "Mute Notification",
                  child: Text("Mute Notification"),
                ),
                const PopupMenuItem(
                  value: "Wallpaper",
                  child: Text("Wallpaper"),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
