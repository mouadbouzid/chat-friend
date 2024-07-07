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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              minVerticalPadding: 30,
              title: Text("Name"),
              leading: CircleAvatar(
                radius: 30,
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrCode()));
                },
                icon: Icon(Iconsax.scan_barcode),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(Iconsax.user),
                trailing: Icon(Iconsax.arrow_right_3),
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
                                child: Text("Done"))
                          ],
                        );
                      });
                },
                title: Text("Theme"),
                leading: Icon(Iconsax.color_swatch),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Iconsax.sun_1),
                title: Text("Dark mode"),
                trailing: Switch(value: true, onChanged: (value) {}),
              ),
            ),
            Card(
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
