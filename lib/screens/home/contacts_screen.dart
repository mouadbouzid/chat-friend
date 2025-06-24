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
  bool search = false;
  final TextEditingController addEmailController = TextEditingController();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          search
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      search = false;
                      searchController.clear();
                    });
                  },
                  icon: const Icon(Iconsax.close_circle),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      search = true;
                    });
                  },
                  icon: const Icon(Iconsax.search_normal),
                ),
        ],
        title: search
            ? Flexible(
                child: TextField(
                  autofocus: true,
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: "Search by Name",
                    border: InputBorder.none,
                  ),
                ),
              )
            : const Text("Chat Friend"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter email of your friend",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            // TODO: implement barcode scanning
                          },
                          icon: const Icon(Iconsax.scan_barcode),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      controller: addEmailController,
                      hint: "Email",
                      icon: Iconsax.direct,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                      ),
                      onPressed: () {
                        // TODO: Add contact logic
                      },
                      child: const Center(
                        child: Text("Add contact"),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Iconsax.user_add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const ContactsCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
