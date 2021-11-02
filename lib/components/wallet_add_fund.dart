import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class WalletAddFund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Funds', style: AppColors.kFontStyle),
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
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: AppColors.gradienColors,
                  center: Alignment(1.0, 1.0),
                ),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: AppColors.addFundPading,
                    child: Text("It's Always Good To:",
                        style: AppColors.kFontBalanceStyle),
                  ),
                  Padding(
                    padding: AppColors.addRulePading,
                    child: Container(
                      height: 2,
                      width: width / 20.0,
                      color: Colors.white,
                    ),
                  ),
                  Container(
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
                                      color: Colors.orange,
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
                                    child: Icon(Icons.add),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 40,
                          child:
                              Text('Add Fund', style: AppColors.kFontNavStyle),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 10,
                          child: Text('Increase More 10 Year Wealth.',
                              style: AppColors.kAddFundSubFontStyle),
                        ),
                        Positioned(
                          right: width / 9.5,
                          top: width / 20,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppColors.addFundPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Container(
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
                                    child: Icon(Icons.monetization_on_outlined),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 40,
                          child:
                              Text('Request.', style: AppColors.kFontNavStyle),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 10,
                          child: Text('Request someone loan.',
                              style: AppColors.kAddFundSubFontStyle),
                        ),
                        Positioned(
                          right: width / 9.5,
                          top: width / 20,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppColors.addFundPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                   Container(
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
                                      color: Colors.green,
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
                                    child:Icon(Icons.credit_card_outlined),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 40,
                          child: Text('Link a new account.',
                              style: AppColors.kFontNavStyle),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 10,
                          child: Text('Add a new bank account.', style: AppColors.kAddFundSubFontStyle),
                        ),

                        Positioned(
                          right: width / 9.5,
                          top: width / 20,
                          child: Icon(Icons.chevron_right, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppColors.addFundPadingDivider,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                   Container(
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
                                      color: Colors.pink,
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
                                    child:Icon(Icons.person_add),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 40,
                          child: Text('Add an account',
                              style: AppColors.kFontNavStyle),
                        ),
                        Positioned(
                          left: width / 3.5,
                          top: width / 10,
                          child: Text('Create a new account.', style: AppColors.kAddFundSubFontStyle),
                        ),

                        Positioned(
                          right: width / 9.5,
                          top: width / 20,
                          child: Icon(Icons.chevron_right, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
