import 'package:flutter/material.dart';

class CustomCircleMenu extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final String imageAssetPath;

  CustomCircleMenu({@required this.title, this.imageAssetPath, @required this.backgroundColor, this.titleColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 52,
            width: 52,
            decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              imageAssetPath,
              height: 40,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: TextStyle(color: titleColor),
          )
        ],
      ),
    );
  }
}
