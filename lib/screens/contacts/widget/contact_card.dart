import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Name"),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.message),
        ),
      ),
    );
  }
}
