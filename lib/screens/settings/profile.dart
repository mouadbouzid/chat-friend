import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController nomController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomController.text = "My name";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    radius: 70,
                  ),
                  Positioned(
                    bottom: -5,
                    right: -5,
                    child: IconButton(
                      icon: const Icon(Iconsax.edit),
                      onPressed: () {
                        // TODO: implement edit avatar
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(Iconsax.user),
                title: TextField(
                  controller: nomController,
                  enabled: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: "Name",
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Iconsax.edit),
                  onPressed: () {
                    // TODO: enable editing of name
                  },
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Iconsax.information),
                title: TextField(
                  controller: nomController,
                  enabled: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: "About",
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Iconsax.edit),
                  onPressed: () {
                    // TODO: enable editing of about
                  },
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Iconsax.direct),
                title: Text("Email"),
                subtitle: Text("Ex@gmail.com"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Iconsax.timer_1),
                title: Text("Joined on"),
                subtitle: Text("01/01/1999"),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {
                // TODO: implement save action
              },
              child: const Center(
                child: Text(
                  "SAVE",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
