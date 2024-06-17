import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewPreviousOrder extends StatefulWidget {
  const ViewPreviousOrder({super.key});

  @override
  State<ViewPreviousOrder> createState() => _ViewPreviousOrderState();
}

class _ViewPreviousOrderState extends State<ViewPreviousOrder> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final h = mediaQuery.size.height;
    final w = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                  child: Text(
                    'FOOD RESTAURANT ADMIN',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.8), fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      height: 35,
                      width: 50,
                      child: MaterialButton(
                        color: Color(0xff1F91F3),
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: GoogleFonts.k2d(
                              textStyle:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                  child: Text(
                    'Order Details',
                    style: GoogleFonts.k2d(
                        textStyle: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 16)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              )
                            ]),
                        margin: EdgeInsets.only(left: 30, right: 10),
                        height: MediaQuery.of(context).size.height * 0.33,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Order Details',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              color: Colors.black, width: 0.1),
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              'Ref ID#',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              'ORDER#1715918332',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              'Status',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.red
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              'Delivered',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              'Amount',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.red
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              '\$193',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned1(),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              )
                            ]),
                        margin: EdgeInsets.only(left: 20, right: 10),
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Delivery Address',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  children: [
                                    Container(
                                      height: h * 0.18,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Ref ID#',
                                                  style: GoogleFonts.k2d(
                                                    textStyle: TextStyle(
                                                        color: Colors.red
                                                            .withOpacity(0.8),
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'ORDER#1715918332',
                                                    style: GoogleFonts.k2d(
                                                      textStyle: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.8),
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    textAlign: TextAlign.left,
                                                    'No.4 V.s Nagar Second Cross ,Madukarai \nPudhucherry',
                                                    style: GoogleFonts.k2d(
                                                      textStyle: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.8),
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned2(),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              )
                            ]),
                        margin: EdgeInsets.only(left: 20, right: 30),
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, right: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Payment Details',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              color: Colors.black, width: 0.1),
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              'Payment',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              'Cash On Delivery',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              'Amount',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.red
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              '\$193',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.06,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black, width: 0.1),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.left,
                                              '',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.red
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              textAlign: TextAlign.right,
                                              '',
                                              style: GoogleFonts.k2d(
                                                textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned3(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          margin: EdgeInsets.only(left: 30, right: 10),
                          height: MediaQuery.of(context).size.height * 0.33,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text(
                                        'User Details',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'Name',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                      color: Colors.red
                                                          .withOpacity(0.8),
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                'Mohanraj',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.8),
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'Mobile',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                '8608191855',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'E-Mail',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                'mohandev0707@gmail.com',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned4(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          margin: EdgeInsets.only(left: 20, right: 30),
                          height: MediaQuery.of(context).size.height * 0.33,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Delivery Boy Details',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'Name',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                      color: Colors.red
                                                          .withOpacity(0.8),
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                'Bhuvanesh',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.8),
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'Phone',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                '8569458555',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: h * 0.06,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.left,
                                                'E-Mail',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.red
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                textAlign: TextAlign.right,
                                                'bhuvanesh2k03@gmail.com',
                                                style: GoogleFonts.k2d(
                                                  textStyle: TextStyle(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned5(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          margin: EdgeInsets.only(left: 20, right: 30),
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Suggestions',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: h * 0.015,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Colors.black.withOpacity(0.2),
                                        )),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -20,
                          left: 40,
                          child: SizedBox(
                            height: 55,
                            width: 50,
                            child: MaterialButton(
                              elevation: 5,
                              color: Color(0xffFEA01C),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                  height: 25, width: 25, 'images/orders.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          margin:
                              EdgeInsets.only(left: 20, right: 30, bottom: 20),
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Suggestions',
                                        style: GoogleFonts.k2d(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -20,
                          left: 40,
                          child: SizedBox(
                            height: 55,
                            width: 50,
                            child: MaterialButton(
                              elevation: 5,
                              color: Color(0xffFEA01C),
                              onPressed: () {},
                              child: SvgPicture.asset(
                                  height: 25, width: 25, 'images/orders.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned Positioned5() {
    return Positioned(
      top: -20,
      left: 40,
      child: SizedBox(
        height: 55,
        width: 50,
        child: MaterialButton(
          elevation: 5,
          color: Color(0xff607D8B),
          onPressed: () {},
          child: SvgPicture.asset(height: 25, width: 25, 'images/bicycle.svg'),
        ),
      ),
    );
  }

  Positioned Positioned4() {
    return Positioned(
      top: -20,
      left: 40,
      child: SizedBox(
        height: 55,
        width: 50,
        child: MaterialButton(
          elevation: 5,
          color: Color(0xffE91E63),
          onPressed: () {},
          child: SvgPicture.asset(height: 25, width: 25, 'images/user.svg'),
        ),
      ),
    );
  }

  Positioned Positioned3() {
    return Positioned(
      top: -20,
      left: 40,
      child: SizedBox(
        height: 55,
        width: 50,
        child: MaterialButton(
          elevation: 5,
          color: Color(0xff607D8B),
          onPressed: () {},
          child:
              SvgPicture.asset(height: 25, width: 25, 'images/creditcard.svg'),
        ),
      ),
    );
  }

  Positioned Positioned2() {
    return Positioned(
      top: -20,
      left: 40,
      child: SizedBox(
        height: 55,
        width: 50,
        child: MaterialButton(
          elevation: 5,
          color: Color(0xffE91E63),
          onPressed: () {},
          child: SvgPicture.asset(height: 25, width: 25, 'images/location.svg'),
        ),
      ),
    );
  }

  Positioned Positioned1() {
    return Positioned(
      top: -20,
      left: 50,
      child: SizedBox(
        height: 55,
        width: 50,
        child: MaterialButton(
          elevation: 5,
          color: Color(0xffFEA01C),
          onPressed: () {},
          child: SvgPicture.asset(height: 25, width: 25, 'images/orders.svg'),
        ),
      ),
    );
  }
}
