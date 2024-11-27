import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/watchlist1_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/watchlist2_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/watchlist3_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/watchlist4_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/watchlist5_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
            title: const Text(
              AppStrings.marketWatch,
              style: TextStyle(
                fontSize: 27,
                color: AppColors.blackColor,
              ),
            ),
            actions: const [
              Icon(
                Icons.keyboard_arrow_down,
                size: 45,
                color: AppColors.blackColor,
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35.0),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: AppColors.blueColor,
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 10),
                    labelColor: AppColors.blueColor,
                    unselectedLabelColor: AppColors.blackColor,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 25),
                    tabs: const [
                      Tab(
                        text: AppStrings.watchlist1,
                      ),
                      Tab(
                        text: AppStrings.watchlist2,
                      ),
                      Tab(
                        text: AppStrings.watchlist3,
                      ),
                      Tab(
                        text: AppStrings.watchlist4,
                      ),
                      Tab(
                        text: AppStrings.watchlist5,
                      ),
                    ],
                  ),
                ],
              ),
            )),
        body: TabBarView(
          controller: tabController,
          children: const [
            WatchList1Screen(),
            WatchList2Screen(),
            WatchList3Screen(),
            WatchList4Screen(),
            WatchList5Screen(),
          ],
        ),
      ),
    );
  }
}
