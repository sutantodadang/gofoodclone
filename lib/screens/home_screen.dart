import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojekclone/screens/near_me.dart';
import 'package:gojekclone/widget/dots_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  final List image = ["animals", "arch", "nature", "people", "tech"];
  int currIndex = 0;

  final List<Map> newMenu = [
    {"title": "Near Me", "icon": Icon(Icons.map)},
    {"title": "Promo Kulineran", "icon": Icon(Icons.disc_full)},
    {"title": "Best Seller", "icon": Icon(Icons.sell)},
    {"title": "24 Hours", "icon": Icon(Icons.timelapse)},
    {"title": "PickUp", "icon": Icon(Icons.food_bank)},
    {"title": "New This Week", "icon": Icon(Icons.upcoming)},
    {"title": "Pesan Disini", "icon": Icon(Icons.no_food)},
    {"title": "Healthy Food", "icon": Icon(Icons.health_and_safety)},
  ];

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.85,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 140),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.close,
            size: 30,
            color: Colors.black,
          ),
          title: Column(
            children: [
              Text(
                "Lokasi Kamu",
                style: TextStyle(fontSize: 16, color: Colors.black38),
              ),
              Text(
                "location",
                style: TextStyle(fontSize: 26, color: Colors.black),
              )
            ],
          ),
          actions: [
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.black,
            ),
          ],
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 40,
              child: CupertinoSearchTextField(
                placeholder: "What Would You Like To Eat?",
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          // ini mas, saya pake list view karena kalo gak pake jadi gak bisa scroll

          // ini kalo misalkanmau fixed ada widgetnya, lupa namanya apa
          // ada caralain, sebenernya ada widget khusus untuk fixed gitu cuma lupa
          // paling pake appbar pake property bottom atau flexibleSpace

          // disini awalnya pak singlechild tapi gak bisa scroll
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 20),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  itemCount: image.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        alignment: Alignment.center,
                        repeat: ImageRepeat.noRepeat,
                        matchTextDirection: false,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://placeimg.com/640/480/" + image[index]),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                alignment: Alignment.centerLeft,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: image.length,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.green,
                    activeDotScale: 1,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: newMenu.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black38),
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          color: Colors.red,
                          iconSize: 40,
                          icon: newMenu[index]["icon"],
                          onPressed: () {
                            Get.to(NearMeScreen());
                          },
                        ),
                      ),
                      Center(
                        child: Text(newMenu[index]["title"]),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose From Cuisine",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green.withOpacity(0.2),
                      ),
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.green.withOpacity(1)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: Container(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 50,
                              backgroundImage: NetworkImage(
                                "https://placeimg.com/640/480/" + image[index],
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: image.length),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        // currentIndex: currIndex,
        // onTap: (value) => currIndex = value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.red,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wheelchair_pickup,
            ),
            label: "Pick Up",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.price_change),
            label: "Promo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
        ],
      ),
    );
  }
}
