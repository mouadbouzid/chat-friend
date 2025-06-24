import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

// This widget displays a person in your contacts list.

class ContactsCard extends StatelessWidget {
  const ContactsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("Name"),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.message),
        ),
      ),
    );
  }
}
