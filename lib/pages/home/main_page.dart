import 'package:flutter/material.dart';
import 'package:jobby/pages/home/discover_page.dart';
import 'package:jobby/pages/home/favorite_page.dart';
import 'package:jobby/pages/home/home_page.dart';
import 'package:jobby/pages/home/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
            print(currentIndex);
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, bottom: 7),
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "assets/home.png",
                  width: 20,
                  color:
                      currentIndex == 0 ? Color(0xFF5284E3) : Color(0xFFA6A7AF),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, bottom: 7),
                child: Image.asset(
                  "assets/discover.png",
                  width: 25,
                  color:
                      currentIndex == 1 ? Color(0xFF5284E3) : Color(0xFFA6A7AF),
                ),
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, bottom: 7),
                child: Image.asset(
                  "assets/bookmark.png",
                  width: 19,
                  color:
                      currentIndex == 2 ? Color(0xFF5284E3) : Color(0xFFA6A7AF),
                ),
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 15, bottom: 7),
                child: Image.asset(
                  "assets/profile.png",
                  width: 26,
                  color:
                      currentIndex == 3 ? Color(0xFF5284E3) : Color(0xFFA6A7AF),
                ),
              ),
              label: 'Profile',
            )
          ]);
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return DiscoverPage();
        case 2:
          return FavoritePage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
