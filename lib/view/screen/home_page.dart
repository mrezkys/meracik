import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meracik/view/widget/bottom_search_bar.dart';
import 'package:meracik/view/widget/custom_app_bar.dart';
import 'package:meracik/view/widget/custom_circle_menu.dart';
import 'package:meracik/view/widget/custom_side_bar.dart';
import 'package:meracik/view/widget/featured_chef_card.dart';
import 'package:meracik/view/widget/recipe_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  foodCategoryModal() {
    return showModalBottomSheet(
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          ),
          child: Column(
            children: [
              Container(
                height: 4,
                width: 54,
                margin: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(color: Colors.grey[300]),
              ),
              // Header
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  'Food Category',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              ),
              // Search
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                height: 53,
                decoration: BoxDecoration(color: Color(0xFF111111).withOpacity(0.04), borderRadius: BorderRadius.circular(45)),
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
                      'Find food or receipt',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  mainAxisSpacing: 24,
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: [
                    CustomCircleMenu(
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/salad.png',
                      backgroundColor: Color(0xFFFFCC3B),
                      title: 'Healthy',
                    ),
                    CustomCircleMenu(
                      title: 'Breakfast',
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/cereals.png',
                      backgroundColor: Color(0xFF1BA7F5),
                    ),
                    CustomCircleMenu(
                      title: 'Seafood',
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/fish.png',
                      backgroundColor: Color(0xFF0DE5F2),
                    ),
                    CustomCircleMenu(
                      title: 'Fastfood',
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/hamburguer.png',
                      backgroundColor: Color(0xFFEA7018),
                    ),
                    CustomCircleMenu(
                      title: 'Desert',
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/cupcake.png',
                      backgroundColor: Color(0xFF9DC134),
                    ),
                    CustomCircleMenu(
                      title: 'Spicy',
                      backgroundColor: Color(0xFFFFED46),
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/chili.png',
                    ),
                    CustomCircleMenu(
                      title: 'Dinner',
                      backgroundColor: Color(0xFF0BCD87),
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/food.png',
                    ),
                    CustomCircleMenu(
                      title: 'Drink',
                      backgroundColor: Color(0xFF9551EB),
                      titleColor: Colors.black,
                      imageAssetPath: 'assets/images/glass.png',
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hello, Olav',
        image: Image.asset(
          'assets/images/profile.png',
          fit: BoxFit.cover,
        ),
        leading: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      extendBody: true,
      bottomNavigationBar: BottomSearchBar(),
      drawer: CustomSideBar(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          // menu - box
          Container(
            padding: EdgeInsets.only(top: 32),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Food Category',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          foodCategoryModal();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                          primary: Colors.transparent,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                        child: Text(
                          'View All',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white.withOpacity(0.3)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Custom circle menu
                Container(
                  height: 85,
                  child: ListView(
                    padding: EdgeInsets.only(left: 16),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CustomCircleMenu(
                        imageAssetPath: 'assets/images/salad.png',
                        backgroundColor: Color(0xFFFFCC3B),
                        title: 'Healthy',
                      ),
                      CustomCircleMenu(
                        imageAssetPath: 'assets/images/cereals.png',
                        backgroundColor: Color(0xFF1BA7F5),
                        title: 'Breakfast',
                      ),
                      CustomCircleMenu(
                        imageAssetPath: 'assets/images/fish.png',
                        backgroundColor: Color(0xFF0DE5F2),
                        title: 'Seafood',
                      ),
                      CustomCircleMenu(
                        imageAssetPath: 'assets/images/hamburguer.png',
                        backgroundColor: Color(0xFFEA7018),
                        title: 'Fastfood',
                      ),
                      CustomCircleMenu(
                        imageAssetPath: 'assets/images/cupcake.png',
                        backgroundColor: Color(0xFF9DC134),
                        title: 'Desert',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 10,
          ),
          SizedBox(
            height: 8,
          ),
          // Recipe Of the week title
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Recipe of the week',
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/go.svg'),
                )
              ],
            ),
          ),
          // Recipe Of the week tile
          ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 8,
              );
            },
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return RecipeTile();
            },
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 10,
          ),

          SizedBox(
            height: 10,
          ),
          // Recipe Of the week title
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Chefs of the week',
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/go.svg'),
                )
              ],
            ),
          ),

          SizedBox(
            height: 16,
          ),
          Container(
            height: 190,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16, right: 16),
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16,
                );
              },
              itemBuilder: (context, index) {
                return FeaturedChefCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
