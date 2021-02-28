import 'package:drdp/components/wallet_account_card_list.dart';
import 'package:drdp/components/wallet_account_extensions.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:drdp/utility/date_time_utility.dart';
import 'package:flutter/material.dart';

import 'utils/wallet_custome_navbar.dart';
import 'wallet_bottomnav.dart';
import 'wallet_drawer_bar.dart';

class WalletAddAccountContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    DateTime time = DateTime.now();
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      bottomNavigationBar: WalletBottomNavigation(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 1500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.gradienColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height / 13,
                  width: width,
                  child: WalletCustomAppBar(
                    onTapMenu: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WalletSideBar())),
                    title: 'Accounts',
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: width / 7,
                  child: Stack(
                    children: [
                      Positioned(
                        left: width / 34,
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
                                  child: Image.asset('assets/images/user.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: width / 4.5,
                        top: width / 40,
                        child: Text('Agoo Clinton.',
                            style: AppColors.kFontNavStyle),
                      ),
                      Positioned(
                        left: width / 4.5,
                        top: width / 10,
                        child: Text(
                          "Today, ${time.day} " +
                              FormateDateTime.getMonthInt(time.month),
                          style: AppColors.kAddFundSubFontStyle,
                        ),
                      ),
                      Positioned(
                        right: width / 15,
                        top: width / 20,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height / 2.5,
                  width: width,
                  child: WalletAccountListContainer(),
                ),
                 SizedBox(
                  height: 20,
                ),
                Container(
                  height: height /1.5,
                  width: width,
                  child: WalletAccountExtensionsContainer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
