import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/applist/apps_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/orders/orders_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/portfolio/portfolio_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/profile/profile_screen.dart';
import 'package:flutter_zerodha_clone_app/Presentation/Screens/watchlist/home_page_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = const [
    HomePageScreen(),
    OrdersScreen(),
    PortfolioScreen(),
    AppsScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.blackColor,
          elevation: 15.0,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
              ),
              label: 'Watchlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subtitles),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts),
              label: 'Apps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'OP0000',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.blueColor,
          onTap: _onItemTapped,
        ),
        body: Container(
          color: AppColors.whiteColor,
          child: Column(
            children: <Widget>[
              Expanded(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
