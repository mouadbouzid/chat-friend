import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatPersonScreen extends StatefulWidget {
  const ChatPersonScreen({super.key});

  @override
  State<ChatPersonScreen> createState() => _ChatPersonScreenState();
}

class _ChatPersonScreenState extends State<ChatPersonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mouad"),
            Text(
              "Last see 12:00 Pm",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.copy)),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.trash)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: TextField(
                      maxLines: 4,
                      minLines: 1,
                      decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Iconsax.emoji_happy)),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Iconsax.camera)),
                            ],
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          hintText: "Message",
                          border: InputBorder.none),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Iconsax.send1))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
