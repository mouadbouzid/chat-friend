import 'package:chat_friend/utils/color.dart';
import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:chat_friend/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                "Reset Password",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: emailController,
                hint: "Email",
                hide: false,
                icon: Iconsax.direct,
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                      child: Text(
                    "Send Email".toUpperCase(),
                    style: const TextStyle(color: Colors.black),
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
