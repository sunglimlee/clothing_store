import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_store/utils/colors.dart';
import 'package:clothing_store/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;

  const TopContainer(
      {Key? key, required this.title, required this.searchBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
        Row(
          children: [
            Text(
              title,
              style: kNormalStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreyColor.withOpacity(0.8),
              ),
              child: Stack(
                // 그러면 이 Stack 의 크기는 가장 큰걸 기준으로 정해지는 건가?
                children: [
                  const Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.black87,
                    size: 20,
                  ),
                  Positioned(
                    right: 0,
                    // 종이 더 크니깐 거기 기준으로 잡힌다. 거기에서 오른쪽 0이니깐 오른쪽으로 바짝 붙는다. 대신 항상 Position 은 항상 위에서부터 시작한다.
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: kOrangeColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl:
                    "https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        // search Bar // 그냥 container 안에 아이콘과 텍스트만 입력했다. 나중에는 TextField 를 같은 색깔로 넣으면 좋겠지..
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: kGreyColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30.0)),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                searchBarTitle,
                style: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
