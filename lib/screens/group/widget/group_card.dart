import 'package:chat_friend/screens/chat/chat_person_screen.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:flutter/material.dart';

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
              MaterialPageRoute(builder: (context) => ChatPersonScreen()));
        },
        title: Text("Group name"),
        subtitle: Text("Last Message"),
        leading: CircleAvatar(
          child: Text("G"),
        ),
        trailing: Badge(
          backgroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 12),
          largeSize: 30,
          label: Text("2"),
        ),
      ),
    );
  }
}
