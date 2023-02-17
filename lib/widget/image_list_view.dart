import 'dart:async';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_store/data/product.dart';
import 'package:flutter/material.dart';

class ImageListView extends StatefulWidget {
  final int
      startIndex; // startIndex 를 넣는 이유는 항상 어디부터 보여줄 것인지 정해야 하기 때문이다. 기억하자.. 항상 인덱스가 중요하다.
  const ImageListView({Key? key, required this.startIndex}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  // 스크롤을 위한 객체
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (!_scrollController.position.atEdge) {
        // implement scroll of list
        _autoScroll(); // 맨긑으로 가면 자동 스크롤이 되도록 하는구나.
      }
      // adding to list
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _autoScroll();
      });

    });
  }

  // 그러니깐 이 함수는 스크롤을 천천히 무한 반복해라는 뜻이다. 에니메이션 기법을 적용해서..
  void _autoScroll() {
    final currentScrollerPosition = _scrollController.offset; // 현재 위치
    final scrollEndPosition = _scrollController.position.maxScrollExtent; // 마지막 위치
    scheduleMicrotask(() { // 그냥 지가 알아서 움직인다.
      _scrollController.animateTo( // scrollController 에 animateTo 가 있네..
          currentScrollerPosition == scrollEndPosition ? 0 : scrollEndPosition, // 무한 반복해라는 뜻이구나..
          duration: const Duration(seconds: 10), // 무려 10초동안이나..
          curve: Curves.linear); // 일반적인 기법으로..
    },);
  }

  @override
  Widget build(BuildContext context) {
    // Transform named constructor 이다. 뭐 그냥 돌려주어라는 거네.. // TODO 값을 변경해서 느껴봐라.
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
          // 그냥 SizedBox 를 Container 처럼 사용해서 그안에 ListView 를 넣을거다.
          width: MediaQuery.of(context).size.width * 0.60,
          // 잘봐라.. 이말은 그냥 하나의 컨테이너의 크기를 화면의 크기만큼으로 하겠다는 거지.. 다시 말해서
          height: MediaQuery.of(context).size.height * 0.60,
          // 이것도 height 도 똑같이 화면크기의 60% 정도의 크기로 sizedBox 를 만들겠다는 거지.. 틀어져 있으니 0.4 밑으로는 좀 비어 버린다.
          child: ListView.builder(
            controller: _scrollController,
            itemCount: 5,
            itemBuilder: (context, index) {
              // 여기서 index 를 사용하면 그냥 1부터 들어간다.
              return CachedNetworkImage(
                // Container 를 위해서 ImageProvider<Object> 를 제공한다.
                imageUrl: products[widget.startIndex + index].productImageUrl,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    // 지금 리스트뷰에 Container 를 리턴하고 있고, 그 Container 는 BoxDecoration 을 이용해서 image 가 들어가고 있다.
                    margin:
                        const EdgeInsets.only(right: 8.0, left: 8.0, top: 10),
                    height: MediaQuery.of(context).size.height *
                        0.40, // 이말이 40% 의 면적만 차지하라는 거지..
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}
