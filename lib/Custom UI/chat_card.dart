import 'package:chit_chat/Custom%20UI/Models/chat_model.dart';
import 'package:chit_chat/Screens/Individual_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class chatCard extends StatelessWidget {
  const chatCard({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IndividualChatScreen(chatModel: chatModel),
            ));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 62,
            child: ListTile(
              leading: chatModel.image.isNotEmpty
                  ? CircleAvatar(
                      backgroundImage: NetworkImage(chatModel.image),
                      backgroundColor: Colors.purple,
                      radius: 27,
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 27,
                      child: SvgPicture.asset(
                        chatModel.isGroup
                            ? 'assets/groups_white_36dp.svg'
                            : 'assets/person_white_36dp.svg',
                        height: 37,
                        width: 37,
                      ),
                    ),
              title: Text(
                chatModel.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(children: [
                const Icon(
                  Icons.done_all,
                  size: 20,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ]),
              trailing: Text(chatModel.time),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black12,
            endIndent: 20,
            indent: 80,
          ),
        ],
      ),
    );
  }
}
