import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Coupon_page extends StatefulWidget {
  const Coupon_page({super.key});

  @override
  State<Coupon_page> createState() => _Coupon_pageState();
}

class _Coupon_pageState extends State<Coupon_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      fillColor: Colors.black12.withOpacity(0.1),
                      filled: true,
                      hintText: 'Enter coupon code',
                      contentPadding:
                          EdgeInsets.only(bottom: 10, left: 20, top: 25),
                      hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 15,
                        fontFamily: 'Inter',
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'APPLY',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Available coupons',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 33,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF5F5F5)),
                        onPressed: () {},
                        child: Text('    Get30    ')),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Get 30% Cashback using UPI payment',
                    style: TextStyle(fontSize: 17, color: Colors.black38),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
