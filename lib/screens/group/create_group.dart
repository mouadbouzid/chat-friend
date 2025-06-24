import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  final TextEditingController groupNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create group"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Add group creation logic here
        },
        label: const Text("Done"),
        icon: const Icon(Iconsax.tick_circle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(radius: 30),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: IconButton(
                        onPressed: () {
                          // TODO: Pick group photo
                        },
                        icon: const Icon(Icons.add_a_photo),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextFormField(
                    controller: groupNameController,
                    hint: "Group Name",
                    icon: Iconsax.user_octagon,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Row(
              children: [
                Text("Members"),
                Spacer(),
                Text("0"),
              ],
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              value: true,
              title: const Text("Ahmad"),
              onChanged: (value) {
                // TODO: Handle member selection
              },
            ),
            CheckboxListTile(
              value: false,
              title: const Text("Ahmad"),
              onChanged: (value) {
                // TODO: Handle member selection
              },
            ),
          ],
        ),
      ),
    );
  }
}
