import 'package:flutter/material.dart';
class TabBarWigget extends StatelessWidget {
  const TabBarWigget({
    Key? key,
    required TabController? tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorColor: Colors.yellow,
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,

      unselectedLabelStyle: TextStyle(color: Colors.white),
      controller: _tabController,
      onTap: (int currentTabIndex) {},
      tabs: [
        Tab(icon: Icon(Icons.home),text: "Home",),
        Tab(text: "Reductions",),
        Tab(text: "Year Beginning Sale",),
        Tab(text: "Star Kits",),
        Tab(text: "Winter Workout Sets",),
        Tab(text: "Sports T-Shirt Sets",),
        Tab(text: "Pullovers",),
        Tab(text: "Football boots",),
        Tab(text: "Casual Sets",),
        Tab(text: "Kajol boots",),
        Tab(text: "Sporting Goods",),
        Tab(text: "barges",),
        Tab(text: "Soccer",),
      ],
    );
  }
}