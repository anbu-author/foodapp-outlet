import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coupon_List extends StatelessWidget {
  const Coupon_List({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final h = mediaQuery.size.height;
    final w = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                child: Text(
                  'FOOD RESTAURANT ADMIN',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 17),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: h * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, bottom: 10),
                        child: Text(
                          'Coupon List',
                          style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16)),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 25,
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text(
                              'Add New Coupon',
                              style: GoogleFonts.k2d(
                                  textStyle: TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26, right: 26),
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          'S.No',
                          style: GoogleFonts.k2d(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Coupon Name',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Coupon Percentage',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Max Discount',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Coupon Status',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.left,
                            'Action',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ListWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
  });

  static const List<String> Nolist = ['1', '2'];
  static const List CouponName = [
    'S1',
    'Foodie@1',
  ];
  static const List CouponPer = [
    '10%',
    '20%',
  ];
  static const List MaxDis = [
    '\$100',
    '\$100',
  ];
  static const List CouponStatus = [
    'Active',
    'Active',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Nolist.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Color? backgroundColor =
              index % 2 == 0 ? Colors.grey.withOpacity(0.1) : Colors.white;
          return Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              children: [
                SizedBox(
                  height: 0.1,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.068,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border(
                      top: BorderSide(width: 0.1, color: Colors.grey),
                      bottom: BorderSide(width: 0.1, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        Nolist[index],
                        textAlign: TextAlign.left,
                        style: GoogleFonts.k2d(),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                      Expanded(
                        child: Text(
                          CouponName[index],
                          textAlign: TextAlign.left,
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          CouponPer[index],
                          textAlign: TextAlign.left,
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          MaxDis[index],
                          textAlign: TextAlign.left,
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          CouponStatus[index],
                          textAlign: TextAlign.left,
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                elevation: 5,
                                color: Color(0xffFF9600),
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: GoogleFonts.k2d(
                                      textStyle: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                              width: 60,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                elevation: 5,
                                color: Colors.red,
                                onPressed: () {},
                                child: Text(
                                  'Delete',
                                  style: GoogleFonts.k2d(
                                      textStyle: TextStyle(
                                          fontSize: 12, color: Colors.white)),
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
          );
        },
      ),
    );
  }
}
