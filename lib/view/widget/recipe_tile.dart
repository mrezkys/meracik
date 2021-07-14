import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RecipeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      height: 190,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Recipe Data
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  height: 115,
                  width: 115,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img (12).jpg'))),
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        color: Colors.green,
                        child: Text(
                          'Healthy',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 4),
                        child: Text(
                          'Healthy Salad with Japanese Rice',
                          style: TextStyle(fontFamily: 'clemente', fontWeight: FontWeight.w600, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Text(
                        'by Marianatha Sudhiro',
                        style: TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 10,
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
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          // Recipe Info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Ingridients ', style: TextStyle(fontFamily: 'clemente', color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600)),
                        TextSpan(text: '15', style: TextStyle(fontFamily: 'inter', color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Ingridients ', style: TextStyle(fontFamily: 'clemente', color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600)),
                        TextSpan(text: '15', style: TextStyle(fontFamily: 'inter', color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/icons/bookmark.svg',
                color: Colors.grey[300],
              )
            ],
          )
        ],
      ),
    );
  }
}
