import 'package:chat_friend/screens/chat/chat_person_screen.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:flutter/material.dart';

/// This widget displays the chat preview for a person.

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatPersonScreen()),
          );
        },
        title: const Text("Name"),
        subtitle: const Text("Last Message"),
        leading: const CircleAvatar(),
        trailing: Badge(
          backgroundColor: primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          largeSize: 30,
          label: const Text("2"),
        ),
      ),
    );
  }
}
