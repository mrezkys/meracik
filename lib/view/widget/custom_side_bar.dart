import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSideBar extends StatefulWidget {
  @override
  _CustomSideBarState createState() => _CustomSideBarState();
}

class _CustomSideBarState extends State<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: 46),
            children: <Widget>[
              // Header
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Meracik.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              // provile box
              Container(
                color: Colors.white,
                height: 96,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey, image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/profile.png'))),
                      ),
                    ),
                    Flexible(
                      flex: 9,
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Olav Monarki',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Tap to see your profile',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //  Menu - List Tile
              // Home
              _buildListTile(
                context,
                iconAssetPath: 'assets/icons/food_bank.svg',
                title: 'Home',
                onTap: () {},
                selected: true,
              ),
              _buildListTile(
                context,
                iconAssetPath: 'assets/icons/fastfood.svg',
                title: 'My Receipt',
                onTap: () {},
                selected: false,
              ),
              _buildListTile(
                context,
                iconAssetPath: 'assets/icons/menu_book.svg',
                title: 'My Bookmark',
                onTap: () {},
                selected: false,
              ),
              _buildListTile(
                context,
                iconAssetPath: 'assets/icons/setting.svg',
                title: 'Settings',
                onTap: () {},
                selected: false,
              ),
            ],
          ),

          // Footer - Logout
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              color: Colors.white,
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTileTheme _buildListTile(BuildContext context, {@required String title, @required String iconAssetPath, @required Function onTap, bool selected = false}) {
    return ListTileTheme(
      contentPadding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
      tileColor: Colors.white,
      minLeadingWidth: 12,
      selectedTileColor: Theme.of(context).primaryColor.withOpacity(0.1),
      selectedColor: Colors.black,
      textColor: Colors.grey,
      child: ListTile(
        selected: selected,
        leading: (selected == false)
            ? SvgPicture.asset(
                iconAssetPath,
                height: 24,
                width: 24,
                color: Colors.grey,
              )
            : SvgPicture.asset(
                iconAssetPath,
                height: 24,
                width: 24,
                color: Colors.black,
              ),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onTap: onTap,
      ),
    );
  }
}
