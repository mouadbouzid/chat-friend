import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// Displays a single chat message bubble in a group chat.
// If [index] is even, the message is sent by the user (right-aligned).
// If [index] is odd, the message is received (left-aligned).

class MessageGroupCard extends StatelessWidget {
  final int index;

  const MessageGroupCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          index % 2 == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (index % 2 == 0)
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.message_edit),
          ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(index % 2 == 0 ? 16 : 0),
              bottomRight: Radius.circular(index % 2 == 0 ? 0 : 16),
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
            ),
          ),
          color: index % 2 == 0
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 1.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (index % 2 != 0) const Text("Mouad"),
                  const Text("Hii!"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (index % 2 == 0)
                        const Icon(
                          Iconsax.tick_circle,
                          size: 18,
                          color: Colors.blue,
                        ),
                      const SizedBox(width: 5),
                      Text(
                        "12:00 PM",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
