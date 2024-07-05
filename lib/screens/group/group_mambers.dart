import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GroupMambers extends StatefulWidget {
  const GroupMambers({super.key});

  @override
  State<GroupMambers> createState() => _GroupMambersState();
}

class _GroupMambersState extends State<GroupMambers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                                onPressed: () {}, icon: Icon(Iconsax.user))
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
