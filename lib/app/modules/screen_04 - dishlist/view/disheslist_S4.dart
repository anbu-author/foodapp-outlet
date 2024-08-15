import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/base/base_view.dart';
import '../controller/dishlist_controller.dart';

class DishesList extends BaseView<DishListController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
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
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 17),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Container(
                height: h * 0.9,
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
                            'Customisation Group',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
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
                                'New Customisation Group',
                                style: GoogleFonts.k2d(
                                    textStyle: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Container(
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'S.No',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Name',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Price',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Type',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Status',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Action',
                                    style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ListWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  ListWidget({
    super.key,
  });

  final DishListController controller = Get.find<DishListController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.dishListData.isEmpty) {
        return Center(child: CircularProgressIndicator());
      } else {  
        return Expanded(
            child: ListView.builder(
          itemCount: controller.dishListData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final message = controller.dishListData[index];
            final dish = message.dish;
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
                            dish?.dishName ?? '',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${dish?.price?.toStringAsFixed(2) ?? '0.00'}',
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
                                  dish?.isVeg == true
                                      ? 'images/veg-icon.svg'
                                      : 'images/non-veg-icon.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            message.status == true ? 'Active' : 'Inactive',
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
      }
    });
  }
}
