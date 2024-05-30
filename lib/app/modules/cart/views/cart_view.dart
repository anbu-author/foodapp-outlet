import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends BaseView<CartController> {
  @override
  Widget body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }


}
