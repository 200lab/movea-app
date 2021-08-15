import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/screens/home_page.dart';
import 'package:movea_app/modules/ticket/my_ticket_page.dart';
import 'package:movea_app/modules/wallet/screens/my_wallet_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late List<Widget> _tabs;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabs = [HomePage(), MyWalletPage(), MyTicketPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: DarkTheme.darkerBackground,
        unselectedItemColor: DarkTheme.darkGrey,
        selectedItemColor: DarkTheme.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetPath.iconHomeInactive)),
              label: 'Movies',
              activeIcon: ImageIcon(AssetImage(AssetPath.iconHomeActive))),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetPath.iconPocketInactive)),
              label: 'Wallet',
              activeIcon: ImageIcon(AssetImage(AssetPath.iconPocketActive))),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetPath.iconTicketInactive)),
              label: 'My Ticket',
              activeIcon: ImageIcon(AssetImage(AssetPath.iconTicketActive))),
        ],
      ),
    );
  }
}
