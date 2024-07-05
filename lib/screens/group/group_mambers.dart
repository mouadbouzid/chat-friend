import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GroupMembers extends StatefulWidget {
  const GroupMembers.GroupMembers({super.key});

  @override
  State<GroupMembers> createState() => _GroupMembersState();
}

class _GroupMembersState extends State<GroupMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group members"),
        actions: [IconButton(onPressed: (){}, icon: Icon(Iconsax.user_edit))],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Mouad"),
                        subtitle: Text(
                          "admin",
                          style: TextStyle(color: Colors.green),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Iconsax.trash)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Iconsax.user_tick))
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
