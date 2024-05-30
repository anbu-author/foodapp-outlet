import 'package:flutter/material.dart';



import '../../../core/base/base_view.dart';
import '../controllers/search_view_controller.dart';

class SearchView extends BaseView<SearchViewController> {
  @override
  Widget body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchView is working',
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
