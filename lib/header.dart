import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/colours.dart'; // Import your colors file here.
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final namewidget = "M.Saad\nMuzamil"
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
              if (context.isMobile) 50.heightBox else 10.heightBox,
              PictureWidget(),
              Row(
                children: [
                  VStack([
                    CustomAppBar().shimmer(primaryColor: colours.accentColor),
                    60.heightBox,
                    namewidget,
                    20.heightBox,
                    // VxBox()
                    //     .color(colours.accentColor)
                    //     .size(60, 10)
                    //     .make()
                    //     .px4()
                    //     .shimmer(primaryColor: colours.accentColor),
                    // 30.heightBox,
                    SocialAccounts(),
                  ]).pSymmetric(
                    h: context.percentWidth * 10,
                    v: 32,
                  ),
                  Expanded(
                    child: VxResponsive(
                      medium: IntroductionWidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60),
                      large: IntroductionWidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60),
                      fallback: const Offstage(),
                    ),
                  )
                ],
              ).w(context.screenWidth)
            ],
          ),
        ]),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(colours.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "@googledevexpert for Flutter, Firebase, Dart & Web.\nPublic Speaker, Blogger, Entrepreneur & YouTuber.\nFounder of MTechViral."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        ElevatedButton(
          // Use ElevatedButton instead of RaisedButton
          onPressed: () {
            launch("https://mtechviral.com");
          },
          style: ElevatedButton.styleFrom(
            primary: colours.accentColor,
            onPrimary: colours.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: "Visit mtechviral.com".text.make(),
        ).h(50)
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.code_rounded,
      size: 50,
      color: colours.accentColor,
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

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key});

  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        FontAwesomeIcons.twitter,
        color: colours.accentColor,
      ).mdClick(() {
        launch("https://twitter.com/MSAAD55385526");
      }).make(),
      10.widthBox,
      Icon(
        FontAwesomeIcons.instagram,
        color: colours.accentColor,
      ).mdClick(() {
        launch("https://www.instagram.com/saad.muzamil/");
      }).make(),
      10.widthBox,
      Icon(
        FontAwesomeIcons.facebook,
        color: colours.accentColor,
      ).mdClick(() {
        launch("https://www.facebook.com/m.saad.muzamil.1");
      }).make(),
      10.widthBox,
      Icon(
        FontAwesomeIcons.linkedin,
        color: colours.accentColor,
      ).mdClick(() {
        launch("https://www.facebook.com/m.saad.muzamil.1");
      }).make(),
      10.widthBox,
      Icon(
        FontAwesomeIcons.github,
        color: colours.accentColor,
      ).mdClick(() {
        launch("https://www.facebook.com/m.saad.muzamil.1");
      }).make(),
      10.widthBox,
    ].hStack();
  }
}
