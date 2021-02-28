import 'package:credit_card_slider/card_company.dart';
import 'package:credit_card_slider/card_network_type.dart';

class FormateDateTime {
  static String getMonthInt(int month) {
    String months = "Jan";

    switch (month) {
      case 1:
        months = "Jan";
        break;
      case 2:
        months = "Feb";
        break;
      case 3:
        months = "March";
        break;
      case 4:
        months = "April";
        break;
      case 5:
        months = "May";
        break;
      case 6:
        months = "June";
        break;
      case 7:
        months = "July";
        break;
      case 8:
        months = "Aug";
        break;
      case 9:
        months = "Sept";
        break;
      case 10:
        months = "Oct";
        break;
      case 11:
        months = "Nov";
        break;
      case 12:
        months = "Dec";
        break;
    }
    return months;
  }
}

class CardUtility {
  static CardCompany getCardCompany(String companyType) {
    CardCompany cardCompany;

    switch (companyType) {
      case "axisBank":
        cardCompany = CardCompany.axisBank;
        break;
      case "axisBankWhite":
        cardCompany = CardCompany.axisBankWhite;
        break;
      case "citiBank":
        cardCompany = CardCompany.citiBank;
        break;
      case "hdfc":
        cardCompany = CardCompany.hdfc;
        break;
      case "hsbc":
        cardCompany = CardCompany.hsbc;
        break;
      case "icici":
        cardCompany = CardCompany.icici;
        break;
      case "indusland":
        cardCompany = CardCompany.indusland;
        break;
      case "kotak":
        cardCompany = CardCompany.kotak;
        break;
      case "sbi":
        cardCompany = CardCompany.sbi;
        break;
      case "sbiCard":
        cardCompany = CardCompany.sbiCard;
        break;
      case "virgin":
        cardCompany = CardCompany.virgin;
        break;
      case "yesBank":
        cardCompany = CardCompany.yesBank;
        break;
    }
    return cardCompany;
  }

  static CardNetworkType getCardTypeDisplay(String cardTyped) {
    CardNetworkType cardType;
    switch (cardTyped) {
      case "mastercard":
        cardType = CardNetworkType.mastercard;
        break;
      case "visa":
        cardType = CardNetworkType.visa;
        break;
      case "rupay":
        cardType = CardNetworkType.rupay;
        break;
      case "visaBasic":
        cardType = CardNetworkType.visaBasic;
        break;
    }
    return cardType;
  }
}
