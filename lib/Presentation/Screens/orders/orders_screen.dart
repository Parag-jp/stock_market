import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/orders/executed_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/orders/gtt_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/orders/pending_screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<OrdersScreen> with TickerProviderStateMixin {
  TabController? tabController;
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
            title: Text(
              'Orders',
              style: TextStyle(fontSize: 27, color: AppColors.blackColor),
            ),
            actions: <Widget>[
              Icon(
                Icons.keyboard_arrow_down,
                size: 45,
                color: AppColors.blackColor,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35.0),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: AppColors.blueColor,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    labelColor: AppColors.blueColor,
                    unselectedLabelColor: AppColors.blackColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 40),
                    tabs: const [
                      Tab(
                        text: 'Pending',
                      ),
                      Tab(
                        text: 'Executed',
                      ),
                      Tab(
                        text: 'GTT',
                      ),
                    ],
                  ),
                ],
              ),
            )),
        body: TabBarView(
          controller: tabController,
          children: const [
            PendingScreen(),
            ExecutedScreen(),
            GttScreen(),
          ],
        ),
      ),
    );
  }
}
