import 'package:drdp/config/colors.dart';
import 'package:drdp/config/size.dart';
import 'package:flutter/material.dart';

import 'utils/wallet_list_tile_with_icon.dart';

class WalletAccountExtensionsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    var width = SizeConfig.getWidth(context);

    return Container(
      // padding: EdgeInsets.all(10),

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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: AppColors.gradienBalanceContainerColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: AppColors.addFundPading,
                child: Text("Extensions", style: AppColors.kFontBalanceStyle),
              ),
              SizedBox(height: 10),
              WalletListTileWithIcon(
                isLeading: true,
                isTrailing: true,
                isImage: true,
                isText: false,
                subtitle: 'Ksh 28/Month',
                title: 'Shazam',
                onPressed: () {},
                icon2: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                ),
                image: Image.asset('assets/images/shazam.png'),
              ),
              Padding(
                padding: AppColors.addFundPadingDivider,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              WalletListTileWithIcon(
                isLeading: true,
                isTrailing: true,
                isImage: true,
                isText: false,
                subtitle: 'Ksh 38/Month',
                title: 'Apple Music',
                onPressed: () {},
                icon2: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                ),
                // icon: Icon(Icons.music_note_sharp),
                image: Image.asset('assets/images/apple.png'),
              ),
              Padding(
                padding: AppColors.addFundPadingDivider,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              WalletListTileWithIcon(
                isLeading: true,
                isTrailing: true,
                isImage: true,
                isText: false,
                subtitle: 'Ksh 20/Month',
                title: 'Spotify',
                onPressed: () {},
                icon2: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                ),
                 image: Image.asset('assets/images/spotify.webp'),
                
              ),
              Padding(
                padding: AppColors.addFundPadingDivider,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              WalletListTileWithIcon(
                isLeading: true,
                isTrailing: true,
                isImage: true,
                isText: false,
                subtitle: 'Ksh 29/Month',
                title: 'HBO',
                onPressed: () {},
                icon2: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                ),
                 image: Image.asset('assets/images/hbo.png'),
                
              ),
              Padding(
                padding: AppColors.addFundPadingDivider,
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// WalletListTileWithIcon(
//                         isImage: false,
//                         isText: false,
//                         subtitle: 'sub',
//                         title: 'Title',
//                         onPressed: (){},
//                         icon: Icon(Icons.settings),
