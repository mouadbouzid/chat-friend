import 'package:chat_friend/screens/settings/profile.dart';
import 'package:chat_friend/screens/settings/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Friend"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              minVerticalPadding: 30,
              title: const Text("Name"),
              leading: const CircleAvatar(
                radius: 30,
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QrCode()));
                },
                icon: const Icon(Iconsax.scan_barcode),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Profile"),
                leading: const Icon(Iconsax.user),
                trailing: const Icon(Iconsax.arrow_right_3),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: BlockPicker(
                              onColorChanged: (value) {},
                              pickerColor: Colors.blue,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Done"))
                          ],
                        );
                      });
                },
                title: const Text("Theme"),
                leading: const Icon(Iconsax.color_swatch),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Iconsax.sun_1),
                title: const Text("Dark mode"),
                trailing: Switch(value: false, onChanged: (value) {}),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Sigout"),
                trailing: Icon(Iconsax.logout_1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
