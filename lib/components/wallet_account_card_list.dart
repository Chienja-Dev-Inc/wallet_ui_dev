import 'package:credit_card_slider/card_background.dart';
// import 'package:credit_card_slider/credit_card_slider.dart';
import 'package:credit_card_slider/credit_card_widget.dart';
import 'package:credit_card_slider/validity.dart';
import 'package:drdp/components/wallet_add_fund.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:drdp/models/credit_card_model.dart';
import 'package:drdp/utility/date_time_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WalletAccountListContainer extends StatefulWidget {
  @override
  _WalletAccountListContainerState createState() =>
      _WalletAccountListContainerState();
}

class _WalletAccountListContainerState
    extends State<WalletAccountListContainer> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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
                  "Accounts",
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
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        child: Swiper(
                          onIndexChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                          autoplay: true,
                          layout: SwiperLayout.DEFAULT,
                          itemCount: creditCards.length,
                          itemBuilder: (BuildContext context, index) {
                            return CreditCard(
                              cardBackground: GradientCardBackground(
                                LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors:
                                      AppColors.gradienBalanceContainerColors,
                                ),
                              ),
                              cardNetworkType: CardUtility.getCardTypeDisplay(creditCards[index].cardNetworkType),
                              cardHolderName: creditCards[index].cardHolderName,
                              cardNumber: creditCards[index].cardNumber,
                              company: CardUtility.getCardCompany(creditCards[index].company),
                              validity: Validity(
                                validThruMonth: creditCards[index].validThruMonth,
                                validThruYear: creditCards[index].validThruYear,
                                validFromMonth: creditCards[index].validFromMonth,
                                validFromYear: creditCards[index].validFromYear,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: map<Widget>(
                              creditCards,
                              (index, image) {
                                return Container(
                                  alignment: Alignment.centerLeft,
                                  height: 6,
                                  width: 6,
                                  margin: EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _current == index
                                          ? Color(0xFF2F93B1)
                                          : Color(0xFF7A93B1)),
                                );
                              },
                            ),
                          ),

                          // More
                          Text(
                            'More...',
                            style: AppColors.kFontStyle,
                          )
                        ],
                      ),
                    ],
                  ),
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
