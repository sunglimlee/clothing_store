import 'package:clothing_store/utils/colors.dart';
import 'package:clothing_store/widget/product_display_list_view.dart';
import 'package:clothing_store/widget/top_container.dart';
import 'package:flutter/material.dart';

class ProductDisplayScreen extends StatefulWidget {
  const ProductDisplayScreen({Key? key}) : super(key: key);

  @override
  State<ProductDisplayScreen> createState() => _ProductDisplayScreenState();
}

class _ProductDisplayScreenState extends State<ProductDisplayScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentValue = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Column(
          children: [
            const TopContainer(
                title: "MNMLMANDI", searchBarTitle: "Search Product"),
            // tab bar and tab views, 잘봐라 Column 안에다가 TabBar 를 넣었다.
            TabBar(
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: kBackgroundColor,
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.label,
              onTap: (value) {
                setState(() {
                  selectedValue = value;
                });
                tabController.animateTo(value); // 이건 뭔지 모르겠다. 에니메이션이 많이 약하네..
              },
              tabs: [
                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: selectedValue == 0
                          ? kBackgroundColor
                          : kGreyColor.withOpacity(0.8),
                      boxShadow: selectedValue == 0
                          ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ]
                          : null),
                  child: const Text(
                    "Trending",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: selectedValue == 1
                          ? kBackgroundColor
                          : kGreyColor.withOpacity(0.8),
                      boxShadow: selectedValue == 0
                          ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ]
                          : null),
                  child: const Text(
                    "Clothing",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // tab view 들어가네..
            // 여기 사이즈를 보면 전체 height 를 선택하고 있는걸 볼 수 있다.
            SizedBox(height: MediaQuery.of(context).size.height,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                ProductDisplayWidget(),
                ProductDisplayWidget(),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
