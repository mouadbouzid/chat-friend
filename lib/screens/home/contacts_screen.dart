import 'package:chat_friend/screens/contacts/widget/contact_card.dart';
import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  TextEditingController addEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(
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
                              "add contact",
                            ),
                          ))
                    ],
                  ),
                );
              });
        },
        child: const Icon(Iconsax.user_add),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return ContactsCard();
              },
            ))
          ],
        ),
      ),
    );
  }
}
