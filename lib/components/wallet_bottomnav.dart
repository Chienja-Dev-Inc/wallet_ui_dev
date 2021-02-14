import 'package:drdp/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletBottomNavigation extends StatefulWidget {
  @override
  _WalletBottomNavigationState createState() => _WalletBottomNavigationState();
}

class _WalletBottomNavigationState extends State<WalletBottomNavigation> {
  int _selectedIndex = 0;

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    // print(index);
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        print('Home::::==== $index');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => HomeScreen(),
        //   ),
        // );
        setState(() {
          _selectedIndex = index;
        });
        break;
      case 1:
        print('Order::::==== $index');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => HomeWidget(),
        //   ),
        // );
        setState(() {
          _selectedIndex = index;
        });
        break;
      case 3:
        print('NotificationList::=== $index');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => NotificationList(),
        //   ),
        // );
        break;
      case 4:
        print('Account::::==== $index');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => ProfilePage(),
        //   ),
        // );
        setState(() {
          _selectedIndex = index;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        boxShadow: AppColors.neumorpShadow,
        gradient: LinearGradient(
              colors: AppColors.gradienColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(Icons.credit_card_outlined)
                : Icon(Icons.credit_card),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.view_carousel)
                : Icon(Icons.vibration),
            label: 'Card List',
          ),
          
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new Icon(Icons.notification_important)
                : new Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? new Icon(Icons.person)
                : new Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        elevation: 0.0,
       
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
      ),
    );
  }
}
