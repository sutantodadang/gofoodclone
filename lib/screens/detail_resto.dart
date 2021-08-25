import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojekclone/screens/payment_summary.dart';
import 'package:gojekclone/utils/data.dart';

class DetailRestoScreen extends StatelessWidget {
  var counter = 0.obs;
  var listIndex = [].obs;
  var totalPrice = 0;

  void add(i, int money) {
    counter++;
    listIndex.add(i);
    totalPrice += money;
  }

  void min(i, int money) {
    counter--;
    listIndex.removeWhere((element) => element == i);
    totalPrice -= money;
  }

  @override
  Widget build(BuildContext context) {
    var i = restaurant[Get.arguments];
    var disc = i["discount"] == "" ? "" : i["discount"].split(" ")[2];
    var discPoint = disc.split("");
    discPoint.removeAt(2);
    var discInt = int.parse(discPoint.join(""));
    print(discInt);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          i["name"],
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Search",
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_alert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.separated(
              itemBuilder: (context, index) => Obx(
                    () => SizedBox(
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            border: (counter > 0)
                                ? Border(
                                    left: BorderSide(
                                        width: 5, color: Colors.green))
                                : Border.all(width: 0, color: Colors.white)),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(12),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    i["foods"][index]["name"],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        (i["foods"][index]["price"] *
                                                (discInt / 100))
                                            .round()
                                            .toString(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: (i["isDiscount"])
                                            ? Text(
                                                i["foods"][index]["price"]
                                                    .toString(),
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              )
                                            : null,
                                      ),
                                      Container(
                                        child: (i["isDiscount"])
                                            ? Container(
                                                alignment: Alignment.center,
                                                width: 60,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    color: Colors.red.shade800),
                                                child: Text(
                                                  "Promo",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            : null,
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline_outlined),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      i["foods"][index]["image"],
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: (counter > 0) ? 100 : 70,
                                    height: 25,
                                    child: (counter > 0)
                                        ? Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors
                                                            .green.shade300),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: IconButton(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3),
                                                    alignment: Alignment.center,
                                                    onPressed: () => min(
                                                        index,
                                                        i["foods"][index]
                                                            ["price"]),
                                                    icon: Icon(
                                                      Icons.remove,
                                                      color: Colors.green,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  counter.toString(),
                                                  style: TextStyle(
                                                      color: Colors.green),
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors
                                                            .green.shade300),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: IconButton(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3),
                                                    alignment: Alignment.center,
                                                    onPressed: () => add(
                                                        index,
                                                        i["foods"][index]
                                                            ["price"]),
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.green,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        : ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              shape: StadiumBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color:
                                                        Colors.green.shade300),
                                              ),
                                              primary: Colors.white,
                                              onPrimary: Colors.green,
                                              onSurface: Colors.green,
                                            ),
                                            onPressed: () {
                                              add(index,
                                                  i["foods"][index]["price"]);
                                            },
                                            child: Text("Add"),
                                          ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          isThreeLine: true,
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    height: 10,
                    thickness: 2,
                  ),
              itemCount: i["foods"].length),
          Obx(
            () => Align(
              alignment: Alignment.bottomCenter,
              child: (counter > 0)
                  ? Container(
                      margin: EdgeInsets.only(bottom: 80),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.food_bank),
                        label: Text("Menu"),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.red.shade700),
                      ),
                    )
                  : ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.food_bank),
                      label: Text("Menu"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), primary: Colors.red.shade700),
                    ),
            ),
          ),
          Obx(
            () => Align(
              alignment: Alignment.bottomCenter,
              child: (counter > 0)
                  ? GestureDetector(
                      onTap: () => Get.to(PaymentSummaryScreen(), arguments: {
                        "total": totalPrice,
                        "totalItem": counter,
                        "resto": i["name"],
                        "disc": discInt,
                      }),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${counter.value} Item",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    i["name"],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "${counter.value * totalPrice}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  : SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
