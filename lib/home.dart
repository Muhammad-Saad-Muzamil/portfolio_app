
import 'package:flutter/material.dart';
import 'package:portfolio_app/colours.dart';
import 'package:portfolio_app/header.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: colours.primaryColor,
      child: VStack([
      HeaderScreen(),
      ]),
    );
  }
}
