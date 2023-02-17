import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_store/data/category.dart';
import 'package:clothing_store/widget/top_container.dart';
import 'package:flutter/material.dart';

class CategoryDisplayScreen extends StatefulWidget {
  const CategoryDisplayScreen({Key? key}) : super(key: key);

  @override
  State<CategoryDisplayScreen> createState() => _CategoryDisplayScreenState();
}

class _CategoryDisplayScreenState extends State<CategoryDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    // 전체를 스크롤 하겠다고 하고
    return SingleChildScrollView(
      //physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          const TopContainer(
              title: "Category", searchBarTitle: "Search Category"),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(), // 이게 있어야 스크롤이 되네..
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: 170,
                margin: const EdgeInsets.only(
                    bottom: 10.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        categories[index].thumbnailImages,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[index].categoryName,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5,),
                          Text("${categories[index].productCount} products",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
