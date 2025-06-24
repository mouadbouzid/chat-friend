import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Displays the app logo SVG image with fixed height.

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svg/login.svg",
      height: 200,
    );
  }
}
