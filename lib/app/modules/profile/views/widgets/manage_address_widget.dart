import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ManageRequest extends StatelessWidget {
  const ManageRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Manage Addresses',
          style: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.87),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.528,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saved Adresses',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      thickness: 0.5,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/m-images/briefcase.svg",
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Work',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 35),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2604 Java Lane, North Augusta',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'SC 29841',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.blue),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          )
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/m-images/home.svg",
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 35),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3236 Shilo Lane, North Augusta',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'SC 29721',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.blue),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          )
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/m-images/location1.svg",
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Farm House',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 35),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '325 Bjorn Lane, North Augusta',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'SC 29841',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.blue),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          )
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: ListView.separated(
                    //     separatorBuilder: (context, index) {
                    //       return SizedBox(
                    //         height: 10,
                    //       );
                    //     },
                    //     itemCount: 3,
                    //     itemBuilder: (context, index) {
                    //       return Container(
                    //         height: MediaQuery.of(context).size.height * 0.1,
                    //         width: double.infinity,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(0),
                    //             color: Colors.grey),
                    //         child: ListTile(
                    //           trailing: IconButton(
                    //               onPressed: () {},
                    //               icon: Icon(
                    //                 Icons.close,
                    //                 color: Colors.red,
                    //               )),
                    //           leading: Image.asset(
                    //             image[index],
                    //           ),
                    //           title: Text('Work'),
                    //           subtitle: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Text('2026 Java Lane, North Augusta'),
                    //               Text('SC 29841'),
                    //             ],
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.91,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Add New Address',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
