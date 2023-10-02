import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/colours.dart'; // Import your colors file here.
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var namewidget = "\nMUHAMMAD\nSAAD\nMUZAMIL"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack(
            [
              PictureWidget(),
              Row(
                children: [
                  VStack([
                    CustomAppBar().shimmer(primaryColor: colours.accentColor),
                    30.heightBox,
                    namewidget,
                    20.heightBox,
                    VxBox().color(colours.accentColor).size(60, 10).make(),
                    30.heightBox,
                    SocialAccounts(),
                  ])
                ],
              )

              // Place CustomAppBar directly in the ZStack
            ],
          ),
        ]),
      ).make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/image.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons
              .code_rounded, // Replace with your custom icon or use a valid Icon.
          size: 50,
          color: Colors.blue, // Replace with your desired color.
        ),
        // Add other widgets for your app bar as needed.
      ],
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        FontAwesomeIcons.twitter,
        color: colours.accentColor,
      )
    ].hStack();
  }
}
