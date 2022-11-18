

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodio/const/styles.dart';
import 'package:foodio/screens/home_screen/widgets/popular_food.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';
import '../../widgets/customNavBar.dart';
import '../../widgets/searchBar.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/homeScreen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();


  int _index = 0;

  @override
  void dispose() {
    buttonCarouselController.stopAutoPlay();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good morning Akila!",
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(Helper.getAssetName("cart.png", "virtual"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Deilivering to"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        //width: 266,
                        child: DropdownButton(
                          value: "Pavelian Park",
                          items: [
                            DropdownMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: AppColor.orange,),
                                  const SizedBox(width: 3,),
                                  Text('20 Pavelian Park ',
                                    style: TextStyle(color:AppColor.orange, fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                  ),)
                                ],
                              ),
                              value: "Pavelian Park",
                            ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName(
                                "dropdown_filled.png", "virtual"),
                          ),
                          style: Helper.getTheme(context).headline4,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*SearchBar(
                    title: "Search Food",
                  ),
                  */
                  /*SizedBox(
                    height: 20,
                  ),*/
                  _buildSlider(context),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(onPressed: () {}, child: Text("View all",
                          style: TextStyle(color: AppColor.orange, fontSize: 14,fontWeight: FontWeight.w400),))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("hamburger2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Sri Lankan",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("fruit.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(onPressed: () {}, child: Text("View all",
                          style: TextStyle(color: AppColor.orange, fontSize: 14,fontWeight: FontWeight.w400),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 145,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child:PopularFood()),
/*
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("western.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Minute by tuk tuk",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("breakfast.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Cafe de Noir",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName(""
                          "bakery.png", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Bakes by Tella",
                  ),
*/
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all",style: TextStyle(color: AppColor.orange,fontSize: 14,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza4.png", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Cafe De Bambaa",
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          MostPopularCard(
                            name: "Burger by Bella",
                            image: Image.asset(
                              Helper.getAssetName("dessert3.png", "real"),
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all",
                            style: TextStyle(color: AppColor.orange, fontSize: 14,fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context)
                            //     .pushNamed(IndividualItem.routeName);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza3.png", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                          ),
                        ),
                        RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("coffee.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Barita"),
                        RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Pizza Rush Hour"),
                      ],
                    ),

                  )
                ],
              ),
            ),
          ),
          /*Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )),*/
        ],
      ),
    );
  }

  _buildSlider(BuildContext context) {
    double h = Helper.getScreenHeight(context);
    double w = Helper.getScreenWidth(context);

    //print(categories[0].toJson());
    return Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            height: 120,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            pageSnapping: true,
            aspectRatio: 2.0,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                _index = index;
              });
            },
          ),
          items: List.generate(4,
                  (index) => Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: index == 1
                              ? Colors.white
                              : Color.fromRGBO(187, 187, 187, 0.33),
                          blurRadius: 5,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    height: 120,
                    width: (w - 20) * .7,
                    child: Image.asset(
                      'assets/images/real/western.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  /*Positioned(
                    bottom: 10,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.only(left: 8,right: 8),
                      decoration: BoxDecoration(color: AppColor.primary,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Fruit',
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  */
                ],
              )),
        ),
        SizedBox(
          height: 5,
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              width: 1 == index ? 20.0 : 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: 1 == index
                    ? BorderRadius.circular(20)
                    : BorderRadius.all(Radius.circular(90)),
                color:
                1 == index ? AppColor.primary : Colors.white,
              ),
            );
          }).toList(),
        ),
        */
      ],
    );
  }
}

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key? key,
    @required String? name,
    @required Image? image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name!,
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColor.primary),
                ),
                Row(
                  children: [
                    Text("Cafe",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColor.primary)),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    Key? key,
    @required String? name,
    @required Image? image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              _name!,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColor.primary),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName("star_filled.png", "virtual"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                color: AppColor.orange,
              ),
            )

          ],
        ),

        Row(
          children: [
            Text("Cafe",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColor.primary),),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),

          ],
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    @required String? name,
    @required Image? image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name!,
                      style: Helper.getTheme(context).headline3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("(124 ratings)"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    @required Image? image,
    @required String? name,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String? _name;
  final Image? _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          _name!,
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColor.primary),
        ),
      ],
    );
  }

}
