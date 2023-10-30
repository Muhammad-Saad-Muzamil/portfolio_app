import 'package:flutter/material.dart';
import 'package:portfolio_app/colours.dart';
import 'package:portfolio_app/footer.dart';
import 'package:portfolio_app/header.dart';
import 'package:portfolio_app/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colours.primaryColor,
      child: VStack([
        HeaderScreen(),
        
        if (context.isMobile) ...[
          IntroductionWidget().p16(),
          MiddleScreen(),
          FooterScreen(),
        ],
      ]).scrollVertical(),
    );
  }
}
