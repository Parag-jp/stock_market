import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/portfolio/holdings_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/portfolio/positions_screen.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<PortfolioScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
            title: const Text(
              'Portfolio',
              style: TextStyle(fontSize: 27, color: AppColors.blackColor),
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
                        const EdgeInsets.symmetric(horizontal: 30),
                    labelColor: AppColors.blueColor,
                    unselectedLabelColor: AppColors.blackColor,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 70),
                    tabs: const [
                      Tab(
                        text: 'Holdings',
                      ),
                      Tab(
                        text: 'Positions',
                      ),
                    ],
                  ),
                ],
              ),
            )),
        body: TabBarView(
          controller: tabController,
          children: const [
            HoldingsScreen(),
            PositionsScreen(),
          ],
        ),
      ),
    );
  }
}
