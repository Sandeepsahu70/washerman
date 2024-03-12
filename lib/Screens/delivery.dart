import 'package:flutter/material.dart';
class DeliveryDone extends StatefulWidget {
  const DeliveryDone({super.key});

  @override
  State<DeliveryDone> createState() => _DeliveryDoneState();
}

class _DeliveryDoneState extends State<DeliveryDone> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 24,
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            "Tittle",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.white,
                              width: 8.0,
                            ),
                          ),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          width: 70,
                          height: 2,
                          color: Color(0xFF2196F3)
                      ),
                      // #2196F3 , #C7E358
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.white,
                              width: 8.0,
                            ),
                          ),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Icon(
                              Icons.done_all_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 2,
                        color: Colors.grey,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.greenAccent,
                          border: Border.all(
                            color: Colors.greenAccent,
                            width: 2.0,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                            border: Border.all(
                              color: Colors.white,
                              width: 8.0,
                            ),
                          ),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent,
                            ),
                            child: Icon(
                              Icons.delivery_dining_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: screenHeight * 0.70,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                                "Payment Pending",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/image.png",
                              height: 100,
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Order id-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "#1466846544",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                Text("Services"),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                      child: Center(
                                          child: Text(
                                            "Wash and fold",
                                            style: TextStyle(color: Colors.black),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                      child: Center(
                                          child: Text(
                                            "dry cleaning",
                                            style: TextStyle(color: Colors.black),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.blue.shade200,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [Text("serial number"), Text("f-546")],
                            ),
                            Spacer(),
                            Column(
                              children: [Text("Date"), Text("25/02/24")],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text("Total payment",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                                Text("25",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.blue.shade200,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: screenHeight * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade100,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Service"),
                                    Spacer(),
                                    Text("Quantity"),
                                    Spacer(),
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1.0,
                                ),
                                Row(
                                  children: [
                                    Text("Washing"),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text("2items"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      "45",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Iron"),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Text("3items"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      "14",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Dry clean"),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Text("5items"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1.0,
                                ),
                                Row(
                                  children: [
                                    Text("Total"),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Text("10items"),
                                    SizedBox(
                                      width: 115,
                                    ),
                                    Text(
                                      "69",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(
                                      "Track orders",
                                      style: TextStyle(color: Colors.black45),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text("Make payment",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),

    );
  }
}
