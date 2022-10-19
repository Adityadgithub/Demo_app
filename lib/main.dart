import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List months = [
  'Jan',
  'Feb',
  'Mar',
  'April',
  'May',
  'Jun',
  'July',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];
var someDateTime = new DateTime.now();
var mon = someDateTime.month;

class _MyAppState extends State<MyApp> {
  var _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var screewidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              bottom: PreferredSize(
                  child: Container(
                    color: Colors.black,
                    height: 0.5,
                  ),
                  preferredSize: Size.fromHeight(4.0)),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color.fromARGB(255, 235, 235, 245),
              ),
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 235, 235, 245),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.blue,
                ),
              ),
              centerTitle: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${months[mon - 1]} ${DateTime.now().day} ${DateTime.now().year}",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '${DateTime.now().hour}:${DateTime.now().minute}',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 31,
                              child: CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Wallet Balance',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'MVR141.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(
                                    255,
                                    235,
                                    68,
                                    93,
                                  )),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 240, 153, 54)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Expanded(
                        child: Container(
                          // width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/giftcard.png"))),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 176, 66, 65)),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.charging_station_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Recharge',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            // width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 87, 186, 69)),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet_membership,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Top Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 109, 185, 115),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ))
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo1.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Reload',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo2.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Reload',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo3.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Reload',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo4.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Reload',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo5.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Reload',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image(
                                height: 40,
                                image: AssetImage('assets/images/logo6.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dhiraagu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Reload',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '12-May-20',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '10.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
