import 'package:chat_friend/screens/group/chat_group_screen.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:flutter/material.dart';

// This widget displays a chat preview card for a group.

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatGroupScreen()));
        },
        title: const Text("Group name"),
        subtitle: const Text("Last Message"),
        leading: const CircleAvatar(
          child: Text("G"),
        ),
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
