import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:drdp/home_dashboard/chat_analysis.dart';
import 'package:drdp/utility/date_time_utility.dart';
import 'package:flutter/material.dart';

class WalletChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            child: LineChartConatiner(),
          ),
          Positioned(
            top: 280,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.white,
                decoration: BoxDecoration(
                  boxShadow: AppColors.neumorpShadow,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Earn.',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                        Container(
                          child: Text(
                            '+25%',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            right: width / 2.59,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '|',
                style: AppColors.kFontSeparatortyle,
              ),
            ),
          ),
          Positioned(
            top: 280,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.white,
                decoration: BoxDecoration(
                  boxShadow: AppColors.neumorpShadow,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Expn.',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                        Container(
                          child: Text(
                            '-15%',
                            style: AppColors.kFontDollarStyle,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
