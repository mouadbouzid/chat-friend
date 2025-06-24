import 'package:chat_friend/screens/auth/forget_screen.dart';
import 'package:chat_friend/screens/setup_profile.dart';
import 'package:chat_friend/utils/color.dart';
import 'package:chat_friend/widgets/customTextFormField.dart';
import 'package:chat_friend/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

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
                "Welcome Back",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: key,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: emailController,
                      hint: "Email",
                      hide: false,
                      icon: Iconsax.direct,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextFormField(
                      controller: passwordController,
                      hint: "Password",
                      hide: true,
                      icon: Iconsax.password_check,
                      isPass: true,
                      size: 5,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          child: Text("Forget my password!"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetScreen()));
                          },
                        ),
                      ],
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
                          if (key.currentState!.validate()) {
                            print("done");
                          }
                        },
                        child: Center(
                            child: Text(
                          "Login".toUpperCase(),
                          style: const TextStyle(color: Colors.black),
                        ))),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetupProfile()),
                              (route) => false);
                        },
                        child: Center(
                            child: Text(
                          "Create account".toUpperCase(),
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
