import 'package:drdp/components/utils/wallet_list_tile_with_icon.dart';
import 'package:drdp/components/utils/wallet_list_tile_with_widget_trailing.dart';
import 'package:drdp/components/wallet_bottomnav.dart';
import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';

class WalletUserProfile extends StatefulWidget {
  @override
  _WalletUserProfileState createState() => _WalletUserProfileState();
}

class _WalletUserProfileState extends State<WalletUserProfile>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: 'General'.toUpperCase(),
    ),
    Tab(
      text: 'Profile'.toUpperCase(),
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
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_outlined),
          ),
        ),
        actions: [],
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
          'Settings',
          style: AppColors.kFontStyle,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          _GeneralTab(),
          _UserProfileTab(),
        ],
      ),
    );
  }
}

class _GeneralTab extends StatefulWidget {
  @override
  __GeneralTabState createState() => __GeneralTabState();
}

class __GeneralTabState extends State<_GeneralTab> {
  bool darkMode = false;
  bool pushNotification = true;

  int _radioValue = 0;

  bool _result = false;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          _result = true;
          break;
        case 1:
          _result = true;
          break;
        case 2:
          _result = true;
          break;
      }
    });
  }

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
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          WalletListTileWithIcon(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: '3 accounts.',
            title: 'Funds Managements.',
            onPressed: () {},
            icon2: Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.credit_card_outlined,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
          WalletListTileWithWidgetTrailing(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: 'Disabled.',
            title: 'Dark Mode.',
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            childLeading: Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                  print(darkMode);
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
          WalletListTileWithWidgetTrailing(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: 'Light.',
            title: 'Push Notification.',
            onPressed: () {},
            icon: Icon(
              Icons.notifications_on_outlined,
              color: Colors.blue,
            ),
            childLeading: Switch(
              value: pushNotification,
              onChanged: (value) {
                setState(() {
                  pushNotification = value;
                  print(pushNotification);
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
          WalletListTileWithWidgetTrailing(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: 'Enabled.',
            title: 'Private Informations.',
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            childLeading: Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
          WalletListTileWithWidgetTrailing(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: 'Enabled.',
            title: 'Sharing Settings.',
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.blue,
            ),
            childLeading: Radio(
                value: 0,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChange,
                activeColor: Colors.green),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
          WalletListTileWithWidgetTrailing(
            isLeading: true,
            isTrailing: true,
            isImage: false,
            isText: false,
            subtitle: 'Enabled.',
            title: 'Automatic Updates.',
            onPressed: () {},
            icon: Icon(
              Icons.system_update,
              color: Colors.blue,
            ),
            childLeading: Radio(
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
              activeColor: Colors.green,
            ),
          ),
          Padding(
            padding: AppColors.navThinPadingDivider,
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _UserProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradienTInTabsColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: width / 1.9,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: AppColors.successColor,
                      radius: 60,
                      child: CircleAvatar(
                        radius: 58,
                        backgroundColor: AppColors.primaryWhite,
                        backgroundImage: AssetImage('assets/images/user.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: width / 10,
                  left: width / 3.1,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.successColor,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue[900],
                      child: Icon(
                        Icons.mode_edit,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'Agoo Clinton',
                  style: AppColors.kFontBalanceStyle,
                ),
              ),
              Icon(
                Icons.mode_edit,
                color: Colors.white70,
                size: 15,
              )
            ],
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Divider(color: Colors.white),
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'Username:',
                  style: AppColors.kProfileFontStyle,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  '@Kchienja.',
                  style: AppColors.kFontAccountFigStyle,
                ),
              ),
            ],
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Divider(color: Colors.white),
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'Email:',
                  style: AppColors.kProfileFontStyle,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'computerscience2.10@gmail.com.',
                  style: AppColors.kEmailProfileFontAccountFigStyle,
                ),
              ),
            ],
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Divider(color: Colors.white),
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'Linked Accounts:',
                  style: AppColors.kProfileFontStyle,
                ),
              ),
            ],
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.successColor,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: AppColors.primaryWhite,
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.successColor,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.primaryWhite,
                    backgroundImage: AssetImage('assets/profile/user1.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.successColor,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.primaryWhite,
                    backgroundImage: AssetImage('assets/profile/user2.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.successColor,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.primaryWhite,
                    backgroundImage: AssetImage('assets/profile/user3.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Divider(color: Colors.white),
          ),
          Row(
            children: [
              Padding(
                padding: AppColors.profilePading,
                child: Text(
                  'Account Description.',
                  style: AppColors.kProfileFontStyle,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: AppColors.profilePading,
                  child: Text(
                    " Lorem ipsum dolor sit amet \nconsectetur adipisicing elit. \nRepellat assumenda accusamus animi\n quasi maiores ducimus autem\n reprehenderit! Temporibus\n reiciendis vitae quia similique\n ratione. Sint facilis ipsa magni\n delectus itaque quae quibusdam,\n explicabo nemo qui fugit. ",
                    style: AppColors.kEmailProfileFontAccountFigStyle,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: AppColors.profilePading,
            child: Divider(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
