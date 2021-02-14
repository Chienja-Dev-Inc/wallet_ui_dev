
class FormateDateTime {

  static String getMonthInt(int month){
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