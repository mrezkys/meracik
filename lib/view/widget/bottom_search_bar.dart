import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black.withOpacity(0.07), Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
      child: GestureDetector(
        onTap: () {
          print('open search page');
        },
        child: Container(
          height: 55,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 14, right: 14, bottom: 15, top: 30),
          padding: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(45), boxShadow: [BoxShadow(blurRadius: 22, offset: Offset(0, 4), color: Colors.black.withOpacity(0.08))]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'What do you want to cook today?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
