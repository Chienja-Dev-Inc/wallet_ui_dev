import 'package:drdp/components/utils/wallet_custome_navbar.dart';
import 'package:drdp/components/utils/wallet_list_tile_with_icon.dart';
import 'package:drdp/components/wallet_bottomnav.dart';
import 'package:drdp/components/wallet_drawer_bar.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';

class WalletRecords extends StatefulWidget {
  @override
  _WalletRecordsState createState() => _WalletRecordsState();
}

class _WalletRecordsState extends State<WalletRecords>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'Expenses'.toUpperCase(),
    ),
    Tab(
      text: 'Earnings'.toUpperCase(),
    ),
  ];

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: WalletBottomNavigation(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple[900],
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WalletSideBar(),
              ),
            ),
            child: Image.asset(
              'assets/images/menu.png',
              color: Colors.white,
              height: 21,
              width: 10,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Icon(Icons.add),
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.orange,
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
        ),
        title: Text(
          'Records',
          style: AppColors.kFontStyle,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          _ExpensesTab(),
          _EarningsTab(),
        ],
      ),
    );
}
}

class _ExpensesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradienTInTabsColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => Padding(
          padding: AppColors.navPadingDivider,
          child: Divider(color: Colors.white),
        ),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return WalletListTileWithIcon(
            isLeading: true,
            isTrailing: true,
            isImage: true,
            isText: true,
            subtitle: 'Bill & Debt',
            title: 'Electricity',
            onPressed: () {},
            text: '-\$121.36',
            image: Image.asset('assets/images/apple.png'),
          );
        },
      ),
    );
  }
}

class _EarningsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradienTInTabsColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => Padding(
          padding: AppColors.navPadingDivider,
          child: Divider(color: Colors.white),
        ),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return WalletListTileWithIcon(
            isLeading: true,
            isTrailing: true,
            isImage: true,
            isText: true,
            subtitle: 'Music & Entertainment',
            title: 'Shazam Reward',
            onPressed: () {},
            text: '\$121.36',
            image: Image.asset('assets/images/shazam.png'),
          );
        },
      ),
    );
   }
}
