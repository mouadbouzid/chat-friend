import 'package:chat_friend/screens/auth/login_screen.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:chat_friend/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SetupProfile extends StatefulWidget {
  const SetupProfile({super.key});

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              },
              icon: Icon(Iconsax.logout_1))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: AppLogo(),
              ),
              Text(
                "Welcome",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: emailController,
                hint: "Name",
                hide: false,
                icon: Iconsax.user,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.all(16)),
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    "Done".toUpperCase(),
                    style: const TextStyle(color: Colors.black),
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
