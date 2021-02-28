import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';
import 'package:drdp/config/colors.dart';

class WalletCustomAppBarWithTwoIcon extends StatelessWidget {
  
  final Function onTapMenu;
  final String title;
  final Icon icon1;
  final Icon icon2;
  final Icon leadingIcon;
  final bool isWithMenu;

  const WalletCustomAppBarWithTwoIcon({Key key, @required this.onTapMenu,this.leadingIcon, @required this.isWithMenu, this.title, this.icon1, this.icon2})
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
              child: isWithMenu ? Image.asset(
                'assets/images/menu.png',
                color: Colors.white,
                height: 21,
              ): leadingIcon,
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
                      child: icon1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: icon2,
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
