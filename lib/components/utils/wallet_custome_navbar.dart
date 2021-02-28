import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';
import 'package:drdp/config/colors.dart';

class WalletCustomAppBar extends StatelessWidget {
  final Function onTapMenu;
  final String title;
  final Icon icon;

  const WalletCustomAppBar({Key key, @required this.onTapMenu, this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: width / 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: onTapMenu,
            child: Container(
              child: Image.asset(
                'assets/images/menu.png',
                color: Colors.white,
                height: 21,
              ),
            ),
          ),
          Container(
            child: Text(
              title,
              style: AppColors.kFontStyle,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: icon,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
