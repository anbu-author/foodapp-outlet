import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

enum Status1 { Single, Multiple }

enum Status2 { Enable, Disable }

class EditPage_S3 extends StatefulWidget {
  const EditPage_S3({super.key});

  @override
  State<EditPage_S3> createState() => _EditPage_S3State();
}

class _EditPage_S3State extends State<EditPage_S3> {
  Status1? _selectStatus1;
  Status2? _selectStatus2;

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
                height: h * 0.45,
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
                            'Edit Customisation Group',
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
                    // Padding(
                    //   padding: const EdgeInsets.all(12.0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         border: Border(
                    //             bottom: BorderSide(
                    //                 color: Colors.black, width: 0.2))),
                    //     child: ExpansionPanelList(
                    //       elevation: 0,
                    //       dividerColor: Colors.black,
                    //       children: [
                    //         ExpansionPanel(
                    //           headerBuilder:
                    //               (BuildContext context, bool isExpanded) {
                    //             return Row(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               crossAxisAlignment: CrossAxisAlignment.center,
                    //               children: [
                    //                 Text(
                    //                   '--select parent category--',
                    //                   style: GoogleFonts.k2d(),
                    //                 ),
                    //               ],
                    //             );
                    //           },
                    //           body: Container(
                    //             padding: EdgeInsets.symmetric(horizontal: 16.0),
                    //           ),
                    //           isExpanded: false,
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'sauce',
                          hintStyle: GoogleFonts.k2d(
                              textStyle: TextStyle(fontSize: 14)),
                          contentPadding: EdgeInsets.symmetric(vertical: 18.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            'Type',
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
                            title: Text(
                              'Single',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                            leading: Transform.scale(
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
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'Multiple',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                            leading: Transform.scale(
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
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.561,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Text(
                            'status',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'Enable',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                            leading: Transform.scale(
                              scale: 0.8,
                              child: Radio<Status2>(
                                value: Status2.Enable,
                                groupValue: _selectStatus2,
                                onChanged: (Status2? value) {
                                  setState(() {
                                    _selectStatus2 = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'Disable',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                            leading: Transform.scale(
                              scale: 0.8,
                              child: Radio<Status2>(
                                value: Status2.Disable,
                                groupValue: _selectStatus2,
                                onChanged: (Status2? value) {
                                  setState(() {
                                    _selectStatus2 = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.561,
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
