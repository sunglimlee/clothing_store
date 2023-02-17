import 'package:clothing_store/screen/category_display_screen.dart';
import 'package:clothing_store/screen/product_display_screen.dart';
import 'package:clothing_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  // tabbar icons
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              // PageView children
              children: const [
                ProductDisplayScreen(),
                CategoryDisplayScreen(),
              ],
            ),
            // bottom bar
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 이 부분봐라.. 정말 예술이다. IconButton 을 리턴하는데 onPressed 도 동시에 다룬다. map 으로 다루고 있지.. ... 으로 배열에 추가하면서..
                    // 그렇게 pageView 를 컨트롤 하고 있다.
                    ...tabBarIcons.map((icon) => IconButton(
                        onPressed: () {
                          icon == FontAwesomeIcons.house ? pageController.jumpToPage(0) : pageController.jumpToPage(1);
                        },
                        icon: Icon(
                          icon,
                          color: Colors.white60,
                          size: 22,
                        )))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
