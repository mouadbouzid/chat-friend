import 'package:flutter/material.dart';
import "package:iconsax/iconsax.dart";

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
        index % 2 == 0
            ? IconButton(onPressed: () {}, icon: Icon(Iconsax.message_edit))
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  index % 2 != 0 ? Text("Mouad") : SizedBox(),
                  Text("dllllllllllllllllllffffffffffffffffffffll"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      index % 2 == 0
                          ? Icon(
                              Iconsax.tick_circle,
                              size: 18,
                              color: Colors.blue,
                            )
                          : SizedBox(),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "12:00 Pm",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
