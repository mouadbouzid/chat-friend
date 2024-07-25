import 'package:chat_friend/screens/chat/chat_person_screen.dart';
import 'package:chat_friend/screens/chat/widgets/chat_card.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController addEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Friend"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Etrer Email of your Friend",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Iconsax.scan_barcode))
                        ],
                      ),
                      CustomTextFormField(
                          controller: addEmailController,
                          hint: "Email",
                          icon: Iconsax.direct),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "Create Chat",
                            ),
                          ))
                    ],
                  ),
                );
              });
        },
        child: const Icon(Iconsax.message_add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ChatCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
