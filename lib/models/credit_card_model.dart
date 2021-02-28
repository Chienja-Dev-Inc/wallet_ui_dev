import 'package:flutter/foundation.dart';

class CreditCardModel {
  final String cardNetworkType;
  final String cardHolderName;
  final String cardNumber;
  final String company;
  final int validThruMonth;
  final int validThruYear;
  final int validFromMonth;
  final int validFromYear;
  CreditCardModel({
    @required this.cardNetworkType,
    @required this.cardHolderName,
    @required this.cardNumber,
    @required this.company,
    @required this.validThruMonth,
    @required this.validThruYear,
    @required this.validFromMonth,
    @required this.validFromYear,
  });
}

List<CreditCardModel> creditCards = creditCardsData
    .map((item) => CreditCardModel(
          cardHolderName: item['cardHolderName'],
          cardNetworkType: item['cardNetworkType'],
          cardNumber: item['cardNumber'],
          company: item['company'],
          validThruMonth: item['validThruMonth'],
          validThruYear: item['validThruYear'],
          validFromMonth: item['validFromMonth'],
          validFromYear: item['validFromYear'],
        ))
    .toList();

var creditCardsData = [
  {
    "cardHolderName": "John Doe Smith",
    "cardNetworkType": "visaBasic",
    "cardNumber": "4242 4242 4242 4242",
    "company": "axisBankWhite",
    "validThruMonth": 2,
    "validThruYear": 23,
    "validFromMonth": 2,
    "validFromYear": 21,
  },
  {
    "cardHolderName": "John Doe Smith",
    "cardNetworkType": "visaBasic",
    "cardNumber": "4242 4242 4242 4242",
    "company": "axisBank",
    "validThruMonth": 3,
    "validThruYear": 23,
    "validFromMonth": 2,
    "validFromYear": 21,
  },
  {
    "cardHolderName": "John Doe Smith",
    "cardNetworkType": "mastercard",
    "cardNumber": "4242 4242 4242 4242",
    "company": "icici",
    "validThruMonth": 3,
    "validThruYear": 23,
    "validFromMonth": 2,
    "validFromYear": 21,
  },
];
