import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/modules/profile/views/widgets/manage_address_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../wallet/views/wallet_screen.dart';
import '../controllers/profile_controller.dart';

class ProfileScreen extends BaseView<ProfileController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: SvgPicture.asset('assets/icon/logout.svg'),
          ),
        ],
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('assets/icon/profile.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$controller.name',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '+918428401295',
                            style: TextStyle(color: Colors.black38),
                          ),
                          Text(
                            'bhuvanesh2k03@gmail.com',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: 30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                scrollControlDisabledMaxHeightRatio:
                                    double.infinity,
                                context: context,
                                builder: (context) {
                                  String newName = controller.name.value;
                                  return Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 20),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              color: Colors.black38,
                                              offset: Offset(2, 2),
                                              blurRadius: 12,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Text(
                                                'Edit Account',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                              'assets/icon/profile.svg'),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Add Photo',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    decoration: TextDecoration
                                                        .underline),
                                              ))
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, right: 25),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Name',
                                              labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                          onChanged: (value) {
                                            newName =
                                                value; // Update newName as user types
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, right: 25),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Email',
                                              labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, right: 25),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Phone Number',
                                              labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                      SizedBox(height: 100),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: double.infinity,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black87,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15))),
                                              onPressed: () {
                                                controller.updateName(newName);
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Save',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 50)
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icon/home-2.svg',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text('Manage Addresses'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      onTap: () {
                        Get.to(() => ManageRequest());
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icon/empty-wallet.svg',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Row(
                        children: [
                          Text('Wallet'),
                          SizedBox(width: 10),
                          Text(
                            '(\$1000.0)',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Get.to(() => WalletScreen());
                        },
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      onTap: () {
                        Get.to(() => WalletScreen());
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icon/language-square.svg',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text('Choose Language'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Center(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 420,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 2,
                                                color: Colors.black38,
                                                offset: Offset(2, 2),
                                                blurRadius: 12,
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text(
                                                  'Choose Language',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.none,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Obx(
                                              () => Padding(
                                            padding: const EdgeInsets.only(left: 20.0),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text('Option 1'),
                                                  trailing: Radio<String>(
                                                    value: 'Option 1',
                                                    groupValue: controller.selectedOption.value,
                                                    onChanged: (value) {
                                                      controller.updateSelectedOption(value!);
                                                    },
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text('Option 2'),
                                                  trailing: Radio<String>(
                                                    value: 'Option 2',
                                                    groupValue: controller.selectedOption.value,
                                                    onChanged: (value) {
                                                      controller.updateSelectedOption(value!);
                                                    },
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text('Option 3'),
                                                  trailing: Radio<String>(
                                                    value: 'Option 3',
                                                    groupValue: controller.selectedOption.value,
                                                    onChanged: (value) {
                                                      controller.updateSelectedOption(value!);
                                                    },
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text('Option 4'),
                                                  trailing: Radio<String>(
                                                    value: 'Option 4',
                                                    groupValue: controller.selectedOption.value,
                                                    onChanged: (value) {
                                                      controller.updateSelectedOption(value!);
                                                    },
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text('Option 5'),
                                                  trailing: Radio<String>(
                                                    value: 'Option 5',
                                                    groupValue:  controller.selectedOption.value,
                                                    onChanged: (value) {
                                                      controller.updateSelectedOption(value!);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: SizedBox(
                                            height: 50,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black87,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'Save',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icon/call.svg',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text('Contact us'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icon/security-safe.svg',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text('Privacy Policy'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text('Recent Order'),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                    ),
                    Text("Hotel H"),
                    Text(
                      "Racoon City",
                      style: TextStyle(color: Colors.black38),
                    ),
                    SizedBox(height: 13),
                    Row(
                      children: [
                        Container(
                          width: 280,
                          child: Text(
                              "Margherita Pizza, Potato Gnocchi, Lemon Ricotta Pasta"),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text('\$18.42'),
                        ),
                      ],
                    ),
                    Text('sep 30,10:20'),
                    SizedBox(height: 20),
                    Container(
                      height: 35,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('     Track Order     '),
                      ),
                    ),
                    SizedBox(height: 40),
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
