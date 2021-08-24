import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojekclone/screens/detail_resto.dart';
import 'package:gojekclone/utils/data.dart';

class NearMeScreen extends StatelessWidget {
  final List<Map> filter = [
    {"title": "Filter", "icon": Icon(Icons.filter)},
    {"title": "Sort", "icon": Icon(Icons.sort)},
    {"title": "4.5 and Above", "icon": Icon(Icons.star)},
    {"title": "Promo", "icon": Icon(Icons.price_change)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Near Me",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),

      // pakai Column aja masalahnya kalo pake listview itu ambigu, sama saja kita scrolling item list pertama dan kedua
      // sedangkan listview itu sendrii memiliki fungsi scroll
      // kemudian height yg diatur pada list ke dua itu menyesuaikan layarnya, disarankan menggunakan expanded
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(filter[index]["title"]),
                      icon: filter[index]["icon"],
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(
                            side: BorderSide(
                                width: 1, color: Colors.grey.shade400),
                          ),
                          elevation: 0,
                          primary: Colors.grey.shade100,
                          onPrimary: Colors.black),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: filter.length),
          ),
          SizedBox(
            height: 20,
          ),

          // yg ini ya?
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                focusColor: Colors.green.shade400,
                hoverColor: Colors.green.shade400,
                leading: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://lorempixel.com/640/480/food/" +
                                (index + 1).toString(),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 20,
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black26,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text("4.5")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  restaurant[index]["name"],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$\$\$\$ - " + restaurant[index]["category"]),
                    SizedBox(
                      height: 10,
                    ),
                    Text(restaurant[index]["range"] + " Delivery In 20 Min"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: (restaurant[index]["isDiscount"])
                          ? Row(
                              children: [
                                Icon(
                                  Icons.price_change,
                                  color: Colors.red.shade700,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  restaurant[index]["discount"],
                                ),
                              ],
                            )
                          : null,
                    ),
                  ],
                ),
                trailing: (restaurant[index]["isFavorite"])
                    ? Icon(
                        Icons.thumb_up_rounded,
                        color: Colors.amber,
                      )
                    : null,
                onTap: () => Get.to(DetailRestoScreen(), arguments: index),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: restaurant.length,
            ),
          ),
        ],
      ),
    );
  }
}
