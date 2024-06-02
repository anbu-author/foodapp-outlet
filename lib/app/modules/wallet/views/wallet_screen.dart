import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

enum gender { male, female }

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  gender? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0, // Adjust the width of the leading widget as needed
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            Text(
              'Wallet',
              style: TextStyle(color: Color(0xff2E2E2E), fontSize: 20),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Available balance:',
                          style: TextStyle(
                              color: Color(0xff2E2E2E).withOpacity(0.5),
                              fontSize: 15),
                        ),
                        Text(
                          '  \$1000',
                          style: TextStyle(
                              color: Color(0xff2E2E2E),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 40),
                    child: Row(
                      children: [
                        Text(
                          'Add Money',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff2E2E2E)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        fillColor: Color(0xffF5F5F5),
                        filled: true,
                        labelText: 'Enter Your New Password',
                        labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Money will be added in your wallet',
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff2E2E2E)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2E2E2E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 7,
                                            offset: Offset(2, 2),
                                            spreadRadius: 2),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 30),
                                      child: Text(
                                        'Add Money To Wallet',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2E2E2E),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.47,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Select an Option to Pay',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0xff2E2E2E)),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$1000.00',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        child: Image(
                                                          image: AssetImage(
                                                              'assets/images/m-images/visa_icon.png'),
                                                          fit: BoxFit.cover,
                                                          height: 20,
                                                          width: 30,
                                                        ),
                                                      ),
                                                      SizedBox(width: 20),
                                                      Text(
                                                        '**********4242',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                            Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        color: Colors.white,
                                                        child: Image(
                                                          image: AssetImage(
                                                              'assets/images/m-images/mastercard.png'),
                                                          fit: BoxFit.cover,
                                                          height: 20,
                                                          width: 30,
                                                        ),
                                                      ),
                                                      SizedBox(width: 20),
                                                      Text(
                                                        '**********2424',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                            Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.058,
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                  Color(0xff2E2E2E),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        13),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  'Make Payment',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'Add Money',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Text(
                        'Last Transactions',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff2E2E2E),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                            fit: BoxFit.fill, 'assets/images/m-images/06.svg'),
                        radius: 30,
                      ),
                      title: Text(
                        'Money Added to Wallet',
                        style: TextStyle(fontSize: 15),
                      ),
                      subtitle: Text(
                        '18 Sep, 10:42 AM',
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        '\$+1000.00',
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 0.2,
                      color: Color(0xff2E2E2E).withOpacity(0.4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: SvgPicture.asset(
                            fit: BoxFit.fill, 'assets/images/m-images/07.svg'),
                        radius: 30,
                      ),
                      title: Text(
                        'Paided to Hotel h',
                        style: TextStyle(fontSize: 15),
                      ),
                      subtitle: Text(
                        '15 Sep, 09:42 AM',
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        '-\$+18.42',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 0.2,
                      color: Color(0xff2E2E2E).withOpacity(0.4),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 30,
                        child: Text('TC'),
                      ),
                      title: Text(
                        'Paided to the Circle',
                        style: TextStyle(fontSize: 15),
                      ),
                      subtitle: Text(
                        '14 Sep, 09:42 AM',
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        '-\$+10.00',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 0.2,
                      color: Color(0xff2E2E2E).withOpacity(0.4),
                    ),
                    SizedBox(
                      height: 10,
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
