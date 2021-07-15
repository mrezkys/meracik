import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meracik/view/utils/app_theme.dart';
import 'package:meracik/view/widget/custom_app_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RecipeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 85,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: ElevatedButton(
          child: Text(
            'Start Cooking',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
          ),
        ),
      ),
      appBar: CustomAppBar(
        leading: SvgPicture.asset('assets/icons/back.svg'),
        title: 'Recipe Details',
        rightIcon: SvgPicture.asset(
          'assets/icons/bookmark.svg',
          color: Colors.grey[350],
        ),
      ),
      extendBody: true,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 12,
          ),
          // Recipe Image Box
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/img (7) - detail.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 12,
          ),
          // Recipe Info Box
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Tag Box
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: AppTheme.healthyColor,
                      child: Text(
                        'Healthy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      color: AppTheme.seafoodColor,
                      child: Text(
                        'Seafood',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'Chocolate Pancake with Strawberry Fruits',
                    style: TextStyle(fontSize: 26, fontFamily: 'clemento', fontWeight: FontWeight.w500),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 4,
                      size: 24,
                      color: Colors.yellow[700],
                      borderColor: Colors.grey,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        primary: Colors.transparent,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.grey,
                      ),
                      child: Text(
                        '( 120 Reviews )',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 12,
          ),
          // Author Info Box
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Info
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey, image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/profile.png'))),
                        ),
                      ),
                      Expanded(
                        flex: 7,
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
                                '4.213 Followers',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          child: Text(
                            'follow',
                            style: TextStyle(color: Colors.blue[700]),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[50],
                            elevation: 0,
                            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                            shadowColor: Colors.transparent,
                            onPrimary: Colors.blue[300],
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                // Post Info
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  margin: EdgeInsets.only(top: 8),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Recipe Post  ', style: TextStyle(fontFamily: 'clemente', color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600)),
                            TextSpan(text: '15', style: TextStyle(fontFamily: 'inter', color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Text('  •  '),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'Responses  ', style: TextStyle(fontFamily: 'clemente', color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600)),
                            TextSpan(text: 'very Good', style: TextStyle(fontFamily: 'inter', color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 12,
          ),
          // About the Receipt
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'About the receipt',
                    style: TextStyle(fontFamily: 'clemente', fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                // About
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut euismod turpis, quis dictum ex. Etiam ut egestas justo. Aliquam erat volutpat. Vivamus ultrices quam odio, vitae finibus leo elementum sit amet. Etiam tempus, purus in ultrices vestibulum, enim diam vulputate massa, nec euismod ipsum ligula iaculis eros. Donec elit arcu, ultricies et euismod eu, commodo et est. In eleifend velit nec magna maximus, ac auctor odio porttitor',
                    style: TextStyle(color: Colors.grey[600], height: 150 / 100),
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                ),

                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 16),
                  child: Text(
                    'Ingridients',
                    style: TextStyle(fontFamily: 'clemente', fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (context, index) {
                    return _ingridientsTileBuilder(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _ingridientsTileBuilder(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(right: 16),
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: AppTheme.randomPallete(), borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1 ½ cups all-purpose flour',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'You can use Whitelily',
                  style: TextStyle(color: Colors.grey[700], fontSize: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
