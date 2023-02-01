import 'package:flutter/material.dart';
import 'package:koora_store/Screens/BottomNavigationScreens/BottomNavagtionScreen.dart';
import 'package:koora_store/Screens/DrawerScreens/DrawerWidget.dart';
import 'package:koora_store/Screens/TabBarScreens/card_lists.dart';
import 'package:koora_store/Screens/TabBarScreens/card_model.dart';
import 'TabBarScreens/card_content.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

    TabController? _tabController;
     late List<Widget>tabBarScreen ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabBarScreen = [
      CardContent(CardLists.list1),
      CardContent(CardLists.list1),
    ];
    _tabController = TabController(length: tabBarScreen.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          appBar: AppBar(
            title: Image.asset(
              "images/koora_logo_removebg.png",
              width: 200,
            ),
            backgroundColor: Colors.black.withOpacity(.7),
            elevation: 5,
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellow,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor:Colors.white ,
              labelStyle: TextStyle(color: Colors.white,fontFamily: "Kanit Regular",fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Colors.white,fontFamily: "Kanit Regular"),

              controller: _tabController,
              onTap: (int currentTabIndex) {},
              tabs: [
                Tab(text: "Home",),
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
            ),
          ),
          drawer: DrawerWidget(),

          body: TabBarView(
            controller: _tabController,
            children: tabBarScreen,
          ),
        ));
  }
}
// 123