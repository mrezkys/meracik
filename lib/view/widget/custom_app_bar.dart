import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;
  final Widget rightIcon;
  final Function onPressedLeading;

  CustomAppBar({@required this.title, @required this.leading, this.rightIcon, this.onPressedLeading});
  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: leading,
            onPressed: onPressedLeading,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              (rightIcon != null)
                  ? Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: rightIcon,
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
