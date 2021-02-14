import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';

class WalletAccountContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    var width = SizeConfig.getWidth(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: width / 40),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10),
              Accounts(),
              SizedBox(width: 10),
              Accounts(),
              SizedBox(width: 10),
              Accounts(),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 140,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: AppColors.neumorpShadow,
        gradient: LinearGradient(
          colors: AppColors.gradienAccountContainerColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text(
                      '\$',
                      style: AppColors.kFontDollarStyle,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '8923.',
                    style: AppColors.kFontAccountFigStyle,
                  ),
                ),
                Container(
                  child: Text(
                    '68',
                    style: AppColors.kFontDollarStyle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Paypal Account',
                    style: AppColors.kFontStyle,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
