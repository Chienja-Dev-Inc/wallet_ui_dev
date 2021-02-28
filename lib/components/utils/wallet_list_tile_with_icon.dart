import 'package:flutter/material.dart';

import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';

class WalletListTileWithIcon extends StatelessWidget {
  final String subtitle;
  final Function onPressed;
  final String title;
  final Icon icon;
  final Icon icon2;
  final bool isImage;
  final bool isText;
  final String text;
  final Image image;

  final bool isTrailing;
  final bool isLeading;

  WalletListTileWithIcon({
    Key key,
    @required this.subtitle,
    this.onPressed,
    @required this.title,
    @required this.isImage,
    @required this.isTrailing,
    @required this.isLeading,
    this.image,
    @required this.isText,
    this.icon,
    this.icon2,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Container(
      height: width / 7,
      child: Stack(
        children: [
          Positioned(
            left: width / 10,
            child: Container(
              height: width / 7,
              width: width / 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        boxShadow: AppColors.neumorpShadow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: isLeading
                          ? isImage
                              ? image
                              : icon
                          : isImage
                              ? image
                              : icon,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: width / 3.5,
            top: width / 40,
            child: Text(title, style: AppColors.kFontNavStyle),
          ),
          Positioned(
            left: width / 3.5,
            top: width / 10,
            child: Text(subtitle, style: AppColors.kAddFundSubFontStyle),
          ),
          Positioned(
              right: width / 9.5,
              top: width / 20,
              child: isTrailing
                  ? isText
                      ? Text(text, style: AppColors.kAddFundSubFontStyle)
                      : icon2
                  : isText
                      ? Text(text, style: AppColors.kAddFundSubFontStyle)
                      : icon),
                      
        ],
      ),
    );
  }
}
