import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousOrders extends StatefulWidget {
  const PreviousOrders({super.key});

  @override
  State<PreviousOrders> createState() => _PreviousOrdersState();
}

class _PreviousOrdersState extends State<PreviousOrders> {
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
                height: h * 1,
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
                                    color: Colors.black, fontSize: 18)),
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
                            Padding(
                              padding: const EdgeInsets.only(left: 158),
                              child: LayoutBuilder(
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
                                    flex: 2,
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
                                    flex: 3,
                                    child: Text(
                                      textAlign: TextAlign.left,
                                      'E-Mail',
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
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.13,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListWidget(),
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
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
  });

  static const List<String> Nolist = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];
  static const List Orderlist = [
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
    'ORDER#1713977816',
  ];
  static const List Emaillist = [
    'elakkiyaselvan@pyraworkz.in',
    'elakkiyaselvan@pyraworkz.in',
    'elakkiyaselvan@pyraworkz.in',
    'elakkiyaselvan@pyraworkz.in',
    'laura@mailinator.com',
    'laura@mailinator.com',
    'balajipyra@mailinator.com',
    'elakkiyaselvan@pyraworkz.in',
    'elakkiyaselvan@pyraworkz.in',
    'elakkiyaselvan@pyraworkz.in',
  ];
  static const List phonelist = [
    '9994391855',
    '9092224922',
    '8608191855',
    '8248208365',
    '9854265485',
    '9568412586',
    '6521458654',
    '8652454545',
    '7845845865',
    '8659854585'
  ];
  static const List Statuslist = [
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
    'Delivered',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      flex: 2,
                      child: Text(
                        Orderlist[index],
                        style: GoogleFonts.k2d(
                          textStyle: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        Emaillist[index],
                        style: GoogleFonts.k2d(
                          textStyle: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        phonelist[index],
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
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        elevation: 5,
                        color: Color(0xff5893D4),
                        onPressed: () {},
                        child: Text(
                          'view',
                          style: GoogleFonts.k2d(
                              textStyle:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
