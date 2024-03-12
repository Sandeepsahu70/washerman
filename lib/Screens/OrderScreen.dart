import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kridaverse_poject/Screens/Notification.dart';
import 'package:kridaverse_poject/Screens/delivery.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Center(
          child: Text(
            "Orders",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenHeight * 0.02),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Active orders",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Completed orders",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.all(screenHeight * 0.02),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenHeight * 0.45,
                  child: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight * 0.04,
                          width: screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Payment Pending",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            Image.asset(
                              "assets/image11.png",
                              height: screenHeight * 0.2,
                              width: screenHeight * 0.2,
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
                                          fontSize: screenHeight * 0.02),
                                    ),
                                    Text(
                                      "#1466846544",
                                      style: TextStyle(
                                        color: Color(0xFF060606),
                                        fontSize: screenHeight * 0.02,
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Services"),
                                Row(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.035,
                                      width: screenWidth * 0.24,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Wash and fold",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Container(
                                      height: screenHeight * 0.035,
                                      width: screenWidth * 0.20,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "dry cleaning",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.blue.shade200,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("serial number"),
                                Text("f-546"),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text("Date"),
                                Text("25/02/24"),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Total payment",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.05,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF999494)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Track orders",
                                      style:
                                          TextStyle(color: Color(0xFF999494)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.04),
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.05,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2196F3),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Make payment",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenHeight * 0.02),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenHeight * 0.45,
                  child: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight * 0.04,
                          width: screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Payment done",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            Image.asset(
                              "assets/image11.png",
                              height: screenHeight * 0.2,
                              width: screenHeight * 0.2,
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
                                        fontSize: screenHeight * 0.02,
                                      ),
                                    ),
                                    Text(
                                      "#1466846544",
                                      style: TextStyle(
                                        color: Color(0xFF060606),
                                        fontSize: screenHeight * 0.02,
                                      ),
                                    ),
                                  ],
                                ),
                                Text("Services"),
                                Row(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.035,
                                      width: screenWidth * 0.24,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Wash and fold",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Container(
                                      height: screenHeight * 0.035,
                                      width: screenWidth * 0.20,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "dry cleaning",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.blue.shade200,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("serial number"),
                                Text("f-546"),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text("Date"),
                                Text("25/02/24"),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Total payment",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.05,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  border: Border.all(color: Color(0xFF999494)),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DeliveryDone(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Track orders",
                                      style: TextStyle(color: Color(0xFF999494)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.04),
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.05,
                                decoration: BoxDecoration(
                                  color: Color(0xFF2196F3),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Download receipt",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
