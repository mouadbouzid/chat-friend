import 'package:chat_friend/utils/color.dart';
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
            Expanded(
                child: ListView.builder(
              reverse: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: index % 2 == 0
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    index % 2 == 0
                        ? IconButton(
                            onPressed: () {}, icon: Icon(Iconsax.message_edit))
                        : SizedBox(),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(index % 2 == 0 ? 16 : 0),
                        bottomRight: Radius.circular(index % 2 == 0 ? 0 : 16),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                      color: index % 2 == 0
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.background,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.sizeOf(context).width / 1.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("dllllllllllllllllllffffffffffffffffffffll"),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "12:00 Pm",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  index % 2 == 0
                                      ? Icon(
                                          Iconsax.tick_circle,
                                          size: 18,
                                          color: Colors.blue,
                                        )
                                      : SizedBox(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            )),
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
