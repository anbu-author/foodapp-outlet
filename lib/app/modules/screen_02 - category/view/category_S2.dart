import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/base/base_view.dart';
import '../controller/category_controller.dart';

class CategoryScreen extends BaseView<CategoryController> {
  CategoryScreen();

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
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 17),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: h * 0.8,
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
                            'Category List',
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
                                'New Category',
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
                      padding: const EdgeInsets.only(left: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'S.No',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            'Name',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            'Status',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            'Action',
                            style: GoogleFonts.k2d(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.024)
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
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    throw UnimplementedError();
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
  });

  static const List<String> Nolist = ['1', '2', '3', '4', '5', '6', '7', '8'];
  static const List Namelist = [
    'BreakFast',
    'Lunch',
    'Non-veg',
    'htf',
    'Dinner',
    'Veg',
    'Non-Veg',
    'jg'
  ];
  static const List Statuslist = [
    'Enabled',
    'Enabled',
    'Enabled',
    'Enabled',
    'Enabled',
    'Enabled',
    'Enabled',
    'Enabled',
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
            padding: const EdgeInsets.only(left: 12, right: 12),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            Nolist[index],
                            textAlign: TextAlign.left,
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          Namelist[index],
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          Statuslist[index],
                          style: GoogleFonts.k2d(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.185,
                      )
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
