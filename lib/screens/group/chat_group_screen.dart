import 'package:chat_friend/screens/group/group_mambers.dart';
import 'package:chat_friend/screens/group/widget/message_group_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatGroupScreen extends StatefulWidget {
  const ChatGroupScreen({super.key});

  @override
  State<ChatGroupScreen> createState() => _ChatGroupScreenState();
}

class _ChatGroupScreenState extends State<ChatGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Group Name"),
            Text(
              "Yassir, Ayman, Yamal, ...",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GroupMembers.GroupMembers()));
              },
              icon: const Icon(Iconsax.user)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MessageGroupCard(
                    index: index,
                  );
                },
              ),
              /*child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "👋",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Text(
                            "Say Hii!!",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),*/
            ),
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
