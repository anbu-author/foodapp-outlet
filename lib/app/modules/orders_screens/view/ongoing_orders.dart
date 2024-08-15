import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/orders_controller.dart';

class OngoingOrdersScreen extends StatefulWidget {
  const OngoingOrdersScreen({super.key});

  @override
  State<OngoingOrdersScreen> createState() => _OngoingOrdersScreenState();
}

class _OngoingOrdersScreenState extends State<OngoingOrdersScreen> {
  final OrdersController controller = Get.find<OrdersController>();

  @override
  Widget build(BuildContext context) {
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
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 17),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
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
                            'Orders List',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'Ongoing Orders',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15, color: Colors.black)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'Previous Orders',
                                    style: GoogleFonts.k2d(
                                      textStyle: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(flex: 7, child: SizedBox())
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child: Container(
                                height: 0.7,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.8),
                                ),
                              ),
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) => Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                child: Container(
                                  height: 2,
                                  width: constraints.maxWidth * 0.09,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      'S.No',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      '#Ref ID',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      'Phone',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      'Status',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      'Ordered On',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: SizedBox())
                                ],
                              ),
                              Divider()
                            ],
                          ),
                        ),
                        _ongoingOrders()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _ongoingOrders() {
    return Obx(() {
      if (controller.ongoingOrderData.isEmpty) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.ongoingOrderData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final Color? backgroundColor =
                index % 2 == 0 ? Colors.grey.withOpacity(0.1) : Colors.white;
            return Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  const SizedBox(
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
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              (index + 1).toString(),
                              textAlign: TextAlign.left,
                              style: GoogleFonts.k2d(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '0.00',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: SvgPicture.asset(
                                    // dish?.isVeg == true
                                    'images/veg-icon.svg'
                                    // : 'images/non-veg-icon.svg',
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Inactive',
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
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }
    });
  }
}
