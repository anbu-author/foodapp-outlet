import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum Status { Enable, Disable }

class EditDishes extends StatefulWidget {
  const EditDishes({super.key});

  @override
  State<EditDishes> createState() => _EditDishesState();
}

class _EditDishesState extends State<EditDishes> {
  Status? _selectStatus;

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
                height: h * 1.35,
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
                            'Edit Dish',
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
                          ),
                        ),
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
                      indent: 10,
                      endIndent: 10,
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
                                            'Breakfast',
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
                                  hintText: 'Dhosai',
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
                                    hintText: '25',
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
                    Row(
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
                                    child: Radio<Status>(
                                      value: Status.Enable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                                    child: Radio<Status>(
                                      value: Status.Disable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Maximum Quantity',
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
                                  hintText: '5',
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
                    Row(
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
                                    child: Radio<Status>(
                                      value: Status.Enable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                                    child: Radio<Status>(
                                      value: Status.Disable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                    ),
                    Row(
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
                                    child: Radio<Status>(
                                      value: Status.Enable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                                    child: Radio<Status>(
                                      value: Status.Disable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                    ),
                    Row(
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
                                    child: Radio<Status>(
                                      value: Status.Enable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                                    child: Radio<Status>(
                                      value: Status.Disable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                    ),
                    Row(
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
                                    child: Radio<Status>(
                                      value: Status.Enable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                                    child: Radio<Status>(
                                      value: Status.Disable,
                                      groupValue: _selectStatus,
                                      onChanged: (Status? value) {
                                        setState(() {
                                          _selectStatus = value;
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
                    ),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            'No File Chosen',
                            style: GoogleFonts.k2d(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.04,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Image(
                            height: 240,
                            width: 340,
                            image: AssetImage('images/Dosa.jpg'),
                          ),
                        ),
                      ],
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
}
