import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class GroupEdit extends StatefulWidget {
  const GroupEdit({super.key});

  @override
  State<GroupEdit> createState() => _GroupEditState();
}

class _GroupEditState extends State<GroupEdit> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    groupNameController.text = "Name";
  }

  TextEditingController groupNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create group"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Done"),
        icon: Icon(Iconsax.tick_circle),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    Positioned(
                        bottom: -10,
                        right: -10,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.add_a_photo)))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextFormField(
                      controller: groupNameController,
                      hint: "Group Name",
                      icon: Iconsax.user_octagon),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text("Members"),
                Spacer(),
                Text("0"),
              ],
            ),
            CheckboxListTile(
                value: true, title: Text("Ahmad"), onChanged: ((value) {})),
            CheckboxListTile(
                value: false, title: Text("Ahmad"), onChanged: ((value) {})),
          ],
        ),
      ),
    );
  }
}
