import 'package:drdp/components/wallet_side_bar.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';
import 'package:drdp/config/colors.dart';
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // boxShadow: AppColors.neumorpShadow,

        gradient: LinearGradient(
          colors: AppColors.gradienAppBarColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: width / 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WalletSideBar()));},
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
              "My Wallet",
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
                        child: Icon(
                      Icons.notifications_on_outlined,
                      color: Colors.white,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    )),
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
