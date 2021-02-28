import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

import 'records/wallet_records.dart';
import 'wallet_add_accounts.dart';

class WalletSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
            )),
        backgroundColor: Colors.purple[600],
        elevation: 0.0,
      ),
      body: PlayAnimation<double>(
        tween: 0.0.tweenTo(200.0),
        duration: 5.seconds,
        curve: Curves.easeOut,
        builder: (context, child, value) {
          // <-- use builder function
          return Container(
              height: 1000,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: AppColors.gradienColors,
                  stops: [0.1, 0.6, 10.0, 14.0],
                ),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      height: width / 3,
                      child: Stack(
                        children: [
                          Positioned(
                            left: width / 6,
                            child: Container(
                              height: width / 7,
                              width: width / 6,
                              decoration: BoxDecoration(
                                color: AppColors.primaryWhite,
                                shape: BoxShape.circle,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
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
                                      child:
                                          Image.asset('assets/images/user.png'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: width / 2.8,
                            top: width / 40,
                            child: Text('Agoo Clinton',
                                style: AppColors.kFontBalanceStyle),
                          ),
                          Positioned(
                            left: width / 2.5,
                            top: width / 10,
                            child: Text('view Profile',
                                style: AppColors.kFontStyle),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('Activity', style: AppColors.kFontNavStyle),
                  ),
                  Padding(
                    padding: AppColors.navPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('My Wallet', style: AppColors.kFontNavStyle),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WalletRecords(),
                      ),
                    ),
                    child: Padding(
                      padding: AppColors.navPading,
                      child: Text('Records', style: AppColors.kFontNavStyle),
                    ),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('Withdrawals', style: AppColors.kFontNavStyle),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('Cards', style: AppColors.kFontNavStyle),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WalletAddAccountContainer(),
                      ),
                    ),
                    child: Padding(
                      padding: AppColors.navPading,
                      child: Text('Accounts', style: AppColors.kFontNavStyle),
                    ),
                  ),
                  Padding(
                    padding: AppColors.navPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('Setting', style: AppColors.kFontNavStyle),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('Help', style: AppColors.kFontNavStyle),
                  ),
                  Padding(
                    padding: AppColors.navPading,
                    child: Text('About', style: AppColors.kFontNavStyle),
                  ),
                  Padding(
                    padding: AppColors.navPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: AppColors.navPading,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Icon(
                          Icons.logout,
                          color: Colors.white,
                        )),
                        Expanded(
                            child:
                                Text('Logout', style: AppColors.kFontNavStyle))
                      ],
                    ),
                  )
                ],
              ),
          );
        },
      ),
    );
  }
}
