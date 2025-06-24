import 'package:chat_friend/screens/group/group_mambers.dart';
import 'package:chat_friend/screens/group/widget/message_group_card.dart';
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
            const Text("Group Name"),
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
                  builder: (context) => const GroupMembers(),
                ),
              );
            },
            icon: const Icon(Iconsax.user),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            // Chat messages list
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MessageGroupCard(index: index);
                },
              ),
              /*
              // Placeholder when no messages exist
              child: Center(
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
              ),
              */
            ),

            // Message input field
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: TextField(
                      maxLines: 4,
                      minLines: 1,
                      decoration: InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.emoji_happy),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.camera),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // TODO: Send message logic
                  },
                  icon: const Icon(Iconsax.send1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
