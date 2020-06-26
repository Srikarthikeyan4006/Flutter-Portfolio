import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:beingsk/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Srikarthikeyan \nM K"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 5 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
            ZStack(
              [

                Row(
                  children: [
                    VStack([
                      if (context.isMobile) 50.heightBox else 10.heightBox,
                      CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                      30.heightBox,
                      nameWidget,
                      30.heightBox,
                      VxBox()
                          .color(Coolors.accentColor)
                          .size(60, 10)
                          .make()
                          .px4()
                          .shimmer(primaryColor: Coolors.accentColor),
                      30.heightBox,
                      SocialAccounts(),
                    ]).pSymmetric(
                      h: context.percentWidth * 10,
                      v: 32,
                    ),


                  ],
                ).w(context.screenWidth),
                PictureWidget(),
              ],
            )
          ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
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

      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.centerRight ,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic1.png",

        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/KSrikarthikeyan");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/being.sk_/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/srikarthikeyan-manickavasagam-a0a3b117b/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/Srikarthikeyan4006");
      }).make(),
      SizedBox(width: 50.00),
      RaisedButton(
        onPressed: () {
          launch("http://www.beingsk.tech");
        },
        hoverColor: Vx.purple700,
        shape: Vx.roundedSm,
        color: Coolors.accentColor,
        textColor: Coolors.primaryColor,
        child: "Visit Being_SK.tech".text.make(),
      ).h(35)
    ].hStack();
  }
}