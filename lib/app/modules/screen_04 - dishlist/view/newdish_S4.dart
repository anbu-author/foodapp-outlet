import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum Status1 { Yes, No }

enum Status2 { Yes, No }

enum Status3 { Active, Inactive }

enum Status4 { Yes, No }

enum Status5 { Yes, No }

class NewDishes extends StatefulWidget {
  const NewDishes({super.key});

  @override
  State<NewDishes> createState() => _NewDishesState();
}

class _NewDishesState extends State<NewDishes> {
  Status1? _selectStatus1;
  Status2? _selectStatus2;
  Status3? _selectStatus3;
  Status4? _selectStatus4;
  Status5? _selectStatus5;

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
                            'New Dish',
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Basic',
                            style: GoogleFonts.k2d(
                                textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 12)),
                          ),
                        ),
                        Spacer(),
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
                    Divider(
                      thickness: 0.4,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Category',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black, width: 0.1),
                                ),
                              ),
                              child: ExpansionPanelList(
                                elevation: 0,
                                dividerColor: Colors.black,
                                children: [
                                  ExpansionPanel(
                                    headerBuilder: (BuildContext context,
                                        bool isExpanded) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '--select parent category--',
                                            style: GoogleFonts.k2d(
                                              textStyle:
                                                  TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    body: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                    ),
                                    isExpanded: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Dish Name',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, top: 20),
                            child: SizedBox(
                              height: 20,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintText: 'Dish Name',
                                  hintStyle: GoogleFonts.k2d(
                                    textStyle: TextStyle(fontSize: 12),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 18.0),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 0.1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 0.1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                'Price',
                                style: GoogleFonts.k2d(
                                    textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 20),
                              child: SizedBox(
                                height: 20,
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: 'Price',
                                    hintStyle: GoogleFonts.k2d(
                                        textStyle: TextStyle(fontSize: 12)),
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 18.0),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.1),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildRow1(),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Dish Name',
                              style: GoogleFonts.k2d(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, top: 20),
                            child: SizedBox(
                              height: 20,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintText: 'Dish Name',
                                  hintStyle: GoogleFonts.k2d(
                                    textStyle: TextStyle(fontSize: 12),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 18.0),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 0.1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 0.1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      'From Time',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 20),
                                    child: SizedBox(
                                      height: 20,
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Please Select From Time....',
                                          hintStyle: GoogleFonts.k2d(
                                            textStyle: TextStyle(fontSize: 12),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      'To Time',
                                      style: GoogleFonts.k2d(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 20),
                                    child: SizedBox(
                                      height: 20,
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          hintText: 'Please Select To Time....',
                                          hintStyle: GoogleFonts.k2d(
                                            textStyle: TextStyle(fontSize: 12),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 18.0),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 0.1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildRow2(),
                    buildRow3(),
                    buildRow4(),
                    buildRow5(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 20),
                          child: Text(
                            'Dish Image',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 25),
                          child: SizedBox(
                            height: 20,
                            width: 90,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black.withOpacity(0.4),
                                      width: 1)),
                              color: Colors.grey.withOpacity(0.0),
                              onPressed: () {},
                              child: Text(
                                'Choose File',
                                style: GoogleFonts.k2d(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Is Recommended',
              style: GoogleFonts.k2d(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Yes',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status5>(
                      value: Status5.Yes,
                      groupValue: _selectStatus5,
                      onChanged: (Status5? value) {
                        setState(() {
                          _selectStatus5 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ListTile(
                  title: Text(
                    'No',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status5>(
                      value: Status5.No,
                      groupValue: _selectStatus5,
                      onChanged: (Status5? value) {
                        setState(() {
                          _selectStatus5 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRow4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Is Customisation',
              style: GoogleFonts.k2d(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Yes',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status4>(
                      value: Status4.Yes,
                      groupValue: _selectStatus4,
                      onChanged: (Status4? value) {
                        setState(() {
                          _selectStatus4 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ListTile(
                  title: Text(
                    'No',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status4>(
                      value: Status4.No,
                      groupValue: _selectStatus4,
                      onChanged: (Status4? value) {
                        setState(() {
                          _selectStatus4 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRow3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Status',
              style: GoogleFonts.k2d(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Active',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status3>(
                      value: Status3.Active,
                      groupValue: _selectStatus3,
                      onChanged: (Status3? value) {
                        setState(() {
                          _selectStatus3 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ListTile(
                  title: Text(
                    'Inactive',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status3>(
                      value: Status3.Inactive,
                      groupValue: _selectStatus3,
                      onChanged: (Status3? value) {
                        setState(() {
                          _selectStatus3 = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRow2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Is Veg',
              style: GoogleFonts.k2d(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Yes',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status2>(
                      value: Status2.Yes,
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
                flex: 5,
                child: ListTile(
                  title: Text(
                    'No',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status2>(
                      value: Status2.No,
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
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Is Slashed Price',
              style: GoogleFonts.k2d(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Yes',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status1>(
                      value: Status1.Yes,
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
                flex: 5,
                child: ListTile(
                  title: Text(
                    'No',
                    style: GoogleFonts.k2d(
                      textStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  leading: Transform.scale(
                    scale: 0.7,
                    child: Radio<Status1>(
                      value: Status1.No,
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
            ],
          ),
        ),
      ],
    );
  }
}
