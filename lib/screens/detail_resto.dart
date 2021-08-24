import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojekclone/utils/data.dart';

class DetailRestoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          "Restoran Japan",
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
              itemBuilder: (context, index) => SizedBox(
                    height: 150,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),

                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant[index]["name"],
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
                                  Text("40000"),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: (restaurant[index]["isDiscount"])
                                        ? Text(
                                            "50000",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          )
                                        : null,
                                  ),
                                  Container(
                                    child: (restaurant[index]["isDiscount"])
                                        ? Icon(
                                            Icons.price_change,
                                            color: Colors.red.shade700,
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
                                  restaurant[index]["image"] +
                                      (index + 1).toString(),
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 60,
                                height: 25,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: StadiumBorder(
                                      side: BorderSide(
                                          width: 1,
                                          color: Colors.green.shade300),
                                    ),
                                    primary: Colors.white,
                                    onPrimary: Colors.green,
                                    onSurface: Colors.green,
                                  ),
                                  onPressed: () {},
                                  child: Text("Add"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      isThreeLine: true,

                      // trailing: Flexible(
                      //   flex: 1,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       SizedBox(
                      //         height: 100,
                      //         width: 100,
                      //         child: ClipRRect(
                      //           borderRadius: BorderRadius.circular(15),
                      //           child: Image.network(
                      //             "https://lorempixel.com/640/480/food/",
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //       ),
                      //
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    height: 10,
                    thickness: 2,
                  ),
              itemCount: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.food_bank),
              label: Text("Menu"),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), primary: Colors.red.shade700),
            ),
          )
        ],
      ),
    );
  }
}
