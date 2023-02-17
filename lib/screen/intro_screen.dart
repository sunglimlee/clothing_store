import 'package:clothing_store/screen/home_screen.dart';
import 'package:clothing_store/utils/colors.dart';
import 'package:clothing_store/utils/utils.dart';
import 'package:clothing_store/widget/image_list_view.dart';
import 'package:flutter/material.dart';

// stateless class
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      // 여기에서 바로 Stack 을 사용한다.
      body: Stack(
        alignment: Alignment.center,
        children: [
          // image transition
          Positioned(
              top: -10,
              left: -150, // 이말은 위치를 stack 에서 밖으로 빼라는 거네.. 오케이
              height: MediaQuery.of(context).size.height * 0.6,
              child: Row(children: const [
                // 똑같은 값을 넣을건데 index 로 구분해서 넣어준다. 머리좋다. 이러면 같은 데이터를 사용하는데도 다르게 보이지..
                ImageListView(
                  startIndex: 0,
                ),
                ImageListView(
                  startIndex: 1,
                ),
                ImageListView(
                  startIndex: 2,
                ),
              ])),
          // 이부분에서 top 의 위치는 알겠는데 중앙의 위치는 어떻게 정해지는 거지?
          // position 은 무조건 중앙으로 가는구나..
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: const Text(
                "MANDIBLE",
                textAlign: TextAlign.left,
                style: kTitleStyle,
              ),
            ),
          ), // 위치 지정을 안하면 0,0 이 된다.
          // information screen
          Positioned(
            bottom: 0,
            // 1:0.6 으로 공간을 확보하고 그곳을 decoration 해준다.
            // Container 로 공간확보했으니
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.white24,
                  Colors.white10,
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.center),
              ),
              // 이제 자식이 그 공간을 차지해도 되겠지?
              child: Column(
                // 아무런 정렬을 안하면 중앙으로 맨위에부터.. 말되지 웹이랑 똑같다.
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your Appearance\nShow Your Quality",
                      style: kNormalStyle.copyWith(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center),
                  const SizedBox(height: paragraphSpace),
                  Text("Change The Quality Of Your\nAppearance with MNMLANDI",
                      style: kNormalStyle.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: paragraphSpace,
                  ),
                  // indicator 부분
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...buildIndicators(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // bottom button
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBackgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text("Sign Up with Email"),
                ),
              )),
        ],
      ),
    );
  }
}
