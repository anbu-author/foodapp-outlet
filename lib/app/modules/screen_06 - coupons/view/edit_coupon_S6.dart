import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

enum Status1 { Single, Multiple }

class EditCoupon_S6 extends StatefulWidget {
  const EditCoupon_S6({super.key});

  @override
  State<EditCoupon_S6> createState() => _EditCoupon_S6State();
}

class _EditCoupon_S6State extends State<EditCoupon_S6> {
  Status1? _selectStatus1;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final h = mediaQuery.size.height;
    final w = mediaQuery.size.width;
    return Scaffold(
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
                height: h * 0.55,
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
                            'Edit Category',
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
                            height: 28,
                            width: 50,
                            child: MaterialButton(
                              color: Color(0xff1F91F3),
                              onPressed: () {},
                              child: Text(
                                'Save',
                                style: GoogleFonts.k2d(
                                    textStyle: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),
                            ),
                          ),
                        )),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            child: SizedBox(
                              height: 28,
                              width: 60,
                              child: MaterialButton(
                                color: Color(0xffFF9600),
                                onPressed: () {},
                                child: Text(
                                  'Cancel',
                                  style: GoogleFonts.k2d(
                                      textStyle: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          cursorHeight: 20,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'S1',
                            hintStyle: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 0),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          cursorHeight: 20,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: '20',
                            hintStyle: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14)),
                            contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          cursorHeight: 20,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'Max Discount',
                            hintStyle: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14)),
                            contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 0.2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            'Coupon Status',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.008,
                        ),
                        Expanded(
                          child: ListTile(
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio<Status1>(
                                    value: Status1.Single,
                                    groupValue: _selectStatus1,
                                    onChanged: (Status1? value) {
                                      setState(() {
                                        _selectStatus1 = value;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Enable',
                                  style: GoogleFonts.k2d(
                                    textStyle: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio<Status1>(
                                    value: Status1.Multiple,
                                    groupValue: _selectStatus1,
                                    onChanged: (Status1? value) {
                                      setState(() {
                                        _selectStatus1 = value;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Disable',
                                  style: GoogleFonts.k2d(
                                    textStyle: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.51,
                        ),
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
