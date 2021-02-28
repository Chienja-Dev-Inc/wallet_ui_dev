import 'package:drdp/components/wallet_add_fund.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:drdp/utility/date_time_utility.dart';
import 'package:flutter/material.dart';

class WalletBalanceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    var width = SizeConfig.getWidth(context);

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: AppColors.neumorpShadow,
        gradient: LinearGradient(
          colors: AppColors.gradienBalanceContainerColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: width / 40),
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Balance",
                  style: AppColors.kFontBalanceStyle,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Today, ${time.day} " +
                      FormateDateTime.getMonthInt(time.month),
                  style: AppColors.kFontStyle,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            '\$',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                        Container(
                          child: Text(
                            '8923.',
                            style: AppColors.kFontBalanceFigStyle,
                          ),
                        ),
                        Container(
                          child: Text(
                            '68',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.call_made_outlined,
                          color: Colors.green,
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "+25% Comp last week",
                  style: AppColors.kFontStyle,
                ),
              ),
            ),
          ),
          Positioned(
            top: 1,
            right: 0,
            child: Container(
              decoration: AppColors.kBoxDecorations,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WalletAddFund(),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Icon(
                              Icons.add_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "Add",
                              style: AppColors.kFontStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
