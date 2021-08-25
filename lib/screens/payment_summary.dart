import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSummaryScreen extends StatelessWidget {
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
        backgroundColor: Colors.white,
        title: Text(
          "Nasi Padang Enak Sekali Loh Gaes",
          maxLines: 1,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.amber,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black12),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber),
                child: IconButton(
                  icon: Icon(
                    Icons.sell,
                    color: Colors.red.shade800,
                  ),
                  onPressed: () {},
                ),
              ),
              title: Text(
                "1 Discount Applied",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {},
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black26),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Summary",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Price"),
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "50000",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text("32000")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Fee"),
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "12000",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text("5000")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Platform Fee"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.business,
                              color: Colors.black,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text("3000")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Order Fee"), Text("1000")],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border(
                      left: BorderSide(width: 5, color: Colors.black38),
                      // top: BorderSide(width: 1, color: Colors.black26),
                      // right: BorderSide(width: 1, color: Colors.black26),
                      bottom: BorderSide(width: 1, color: Colors.black26),
                    ),
                  ),
                  child: Text("Applies to orders below"),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "80000",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "View Details",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.green,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
          // SizedBox(
          //   height: 900,
          //   child: Column(
          //     children: [
          //       Text("Payment Summary"),
          //       ListView.builder(
          //         itemBuilder: (context, index) => ListTile(
          //           leading: Text("Price"),
          //           trailing: Row(
          //             children: [
          //               Text(
          //                 "30000",
          //                 style: TextStyle(
          //                   decoration: TextDecoration.lineThrough,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         itemCount: 4,
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
      persistentFooterButtons: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            height: 30,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade700,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "Gopay later by findday",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "50000",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pending,
                      size: 30,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Order",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ),
                  shape: StadiumBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.confirmation_num,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Yeey! You saved "),
              Text(
                "12000",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(" on this order!!!")
            ])
          ],
        ),
      ],
      // bottomSheet: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Row(
      //       children: [
      //         Row(
      //           children: [
      //             Container(
      //               width: 20,
      //               height: 20,
      //               decoration: BoxDecoration(
      //                 color: Colors.blue.shade400,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: Icon(Icons.price_change),
      //             )
      //           ],
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
