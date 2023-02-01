import 'package:flutter/material.dart';
import 'package:koora_store/Screens/DrawerScreens/DrawerWidget.dart';
import 'TabBarScreens/card_content.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  List <Widget>_tabBarScreen = [
    CardContent(image: "images/NeymarT-shirt.png",descrebtion: "des",detailes: "detealis",priceBef: "priceBef",priceAft: "priceAfter"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabBarScreen.length, vsync: this);
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
              "images/koora_logo.png",
              width: 200,
            ),
            backgroundColor: Color(0xff1C1C1C),
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
            children: _tabBarScreen,
          ),
        ));
  }
}
