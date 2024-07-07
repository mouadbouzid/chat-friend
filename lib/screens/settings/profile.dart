import 'package:chat_friend/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nomController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nomController.text = "My name";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                  ),
                  Positioned(
                      bottom: -5,
                      right: -5,
                      child: IconButton(
                        icon: Icon(Iconsax.edit),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                title: TextField(
                  controller: nomController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Name",
                  ),
                ),
                leading: Icon(Iconsax.user),
                trailing: IconButton(
                  icon: Icon(Iconsax.edit),
                  onPressed: () {},
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: TextField(
                  controller: nomController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "About",
                  ),
                ),
                leading: Icon(Iconsax.information),
                trailing: IconButton(
                  icon: Icon(Iconsax.edit),
                  onPressed: () {},
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Email"),
                leading: Icon(Iconsax.direct),
                subtitle: Text("Ex@gmail.com"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Joined on"),
                leading: Icon(Iconsax.timer_1),
                subtitle: Text("01/01/1999"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    padding: const EdgeInsets.all(16)),
                onPressed: () {},
                child: Center(
                    child: Text(
                  "save".toUpperCase(),
                  style: const TextStyle(color: Colors.black),
                ))),
          ],
        ),
      ),
    );
  }
}
