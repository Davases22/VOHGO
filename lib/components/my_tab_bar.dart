import 'package:flutter/material.dart';
import 'package:fisrt_app/models/products.dart';

class MyTabBar extends StatelessWidget{
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
});

List<Tab> _buildCategoryTabs(){
  return ProductCategory.values.map((category){
    return Tab(
      text: category.toString().split('.').last,
    );
  }).toList();
}

  @override
  Widget build(BuildContext context){
    return Container(
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}