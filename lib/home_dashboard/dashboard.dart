import 'package:drdp/components/utils/wallet_custome_nabar_with_two_icon.dart';
import 'package:drdp/components/wallet_account.dart';
import 'package:drdp/components/wallet_balance_container.dart';
import 'package:drdp/components/wallet_bottomnav.dart';
import 'package:drdp/components/wallet_cashout_send_cash.dart';
import 'package:drdp/components/wallet_chart.dart';
import 'package:drdp/components/wallet_drawer_bar.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';

class WalletDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: WalletBottomNavigation(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
                  child: WalletCustomAppBarWithTwoIcon(
                    title: 'My Wallet',
                    icon1: Icon(Icons.notifications_on_outlined, color: Colors.white),
                    icon2: Icon(Icons.search_outlined, color: Colors.white,),
                    isWithMenu: true,
                    onTapMenu: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WalletSideBar(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: height / 4,
                  width: width,
                  child: WalletBalanceContainer(),
                ),
                SizedBox(height: 20),
                Container(
                  height: height / 2,
                  width: width,
                  child: WalletChartContainer(),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: width / 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Accounts", style: AppColors.kFontStyle),
                      ),
                      Expanded(
                        child: ListTile(
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width,
                  child: WalletAccountContainer(),
                ),
                SizedBox(height: 30),
                Container(
                  width: width,
                  child: WalletCashoutSend(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
