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
          height: 200,
          padding: EdgeInsets.all(10),
          decoration: AppColors.kBoxDecorations,
          margin: EdgeInsets.symmetric(horizontal: width / 40),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:  List.generate(8, (index) =>  Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Accounts(
                  currency: 'Ksh',
                  amount: '298$index',
                  cents: '34',
                  bankaccount: 'Equity Bank',
                ),
            ),),

            // [
            //   SizedBox(width: 10),
            //   List.generate(18, (index) => Container()),
            //   Accounts(
            //     currency: 'Ksh',
            //     amount: '29812',
            //     cents: '34',
            //     bankaccount: 'Equity Bank',
            //   ),
            //   SizedBox(width: 10),
            //   Accounts(
            //     currency: 'Ksh',
            //     amount: '212',
            //     cents: '09',
            //     bankaccount: 'KCB Bank',
            //   ),
            //   SizedBox(width: 10),
            //   Accounts(
            //     currency: '\$',
            //     amount: '2812',
            //     cents: '34',
            //     bankaccount: 'Western Union',
            //   ),
            //   SizedBox(width: 10),
            // ],

          ),
        ),
      ],
    );
  }
}

class Accounts extends StatelessWidget {
  final String currency;
  final String amount;
  final String cents;
  final String bankaccount;

  const Accounts({Key key, this.currency, this.amount, this.cents, this.bankaccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      currency,
                      style: AppColors.kFontDollarStyle,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    amount,
                    style: AppColors.kFontAccountFigStyle,
                  ),
                ),
                Container(
                  child: Text(
                    cents,
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
                    bankaccount,
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
