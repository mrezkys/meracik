import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeaturedChefCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, left: 6, right: 6),
      height: 190,
      width: 160,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[350], width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            height: 80,
            width: 80,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/profile.png'), fit: BoxFit.cover)),
          ),
          Text(
            'Arlien Minura',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontFamily: 'clemente', fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '12 Receipt | 12 Course',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          SizedBox(
            height: 8,
          ),
          SmoothStarRating(
            allowHalfRating: false,
            starCount: 5,
            rating: 4,
            size: 18,
            color: Colors.yellow[700],
            borderColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
