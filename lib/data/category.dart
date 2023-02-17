import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
class Category with _$Category {
  @Assert('categoryName.length > 2', '카테고리 이름은 2보다 커야 합니다.')
  const factory Category({
    required String categoryName,
    required String productCount,
    required String thumbnailImages,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

// list of categories 여기서 더미 리스트를 만드네.
final categories = [
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '240',
      thumbnailImages:
          "https://m.media-amazon.com/images/I/91tZTh+UvcL._AC_UL1500_.jpg"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '150',
      thumbnailImages:
          "https://wordans-a1a5.kxcdn.com/files/model_specifications/2011/3/16/2802/2802_big.jpg?1676392303"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '90',
      thumbnailImages:
          "https://img.ltwebstatic.com/images3_pi/2020/05/19/15898538254ace1fe103a6884e4d06fb6abcf7f6c7_thumbnail_900x.webp"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '250',
      thumbnailImages:
          "https://images.tailorstore.com/YToyOntzOjU6IndpZHRoIjtpOjExNTI7czo2OiJoZWlnaHQiO2I6MDt9/images/catalog/Tailor-Store-short-sleeve-tshirt-white.jpg"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '50',
      thumbnailImages:
          "http://cdn.shopify.com/s/files/1/1437/9044/products/vancouver_bridge_t-shirt.jpg?v=1629400980"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '40',
      thumbnailImages:
          "https://static.nike.com/a/images/t_default/yql7ozajhdesi8vklgb3/sportswear-t-shirt-FPcVXK.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '70',
      thumbnailImages:
          "https://m.media-amazon.com/images/I/61SgZDS6+RL._AC_UL1500_.jpg"),
  const Category(
      categoryName: 'SHOES',
      productCount: '240',
      thumbnailImages:
          "https://us03-imgcdn.ymcart.com/89311/2022/06/01/6/4/6458a997ee2bcb4c.jpg?x-oss-process=image/quality,Q_90/auto-orient,1/resize,m_lfit,w_700,h_1000/format,webp"),
  const Category(
      categoryName: 'SHOES',
      productCount: '30',
      thumbnailImages:
          "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ea618d2f-e4c6-4119-a97f-c2c09c1561b2/dunk-high-older-shoes-JfWkHc.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '20',
      thumbnailImages:
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae07b5f1-8847-4f07-957b-6bc625b9b308/sb-force-58-skate-shoes-6fn4Wl.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '60',
      thumbnailImages:
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/280e59b4-bcb5-4a5d-8214-a93c2f47792c/air-deldon-be-true-basketball-shoes-mWJmPk.png"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '350',
      thumbnailImages:
          "http://cdn.shopify.com/s/files/1/2804/0750/products/Hoodie-Men-white-01_600x600.jpg?v=1634939725"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '770',
      thumbnailImages:
          "https://i.ebayimg.com/images/g/naAAAOSwFiNd1pjd/s-l500.jpg"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '240',
      thumbnailImages:
          "https://imagescdn.simons.ca/images/17531/52/4/A1_2.jpg?__=3"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '20',
      thumbnailImages:
          "https://media.boohoo.com/i/boohoo/bmm04400_taupe_xl/mens-taupe-oversized-dove-graphic-zip-hem-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '245',
      thumbnailImages:
          "https://media.boohoo.com/i/boohoo/bmm24788_chocolate_xl?w=537&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '240',
      thumbnailImages:
          "https://m.media-amazon.com/images/I/91tZTh+UvcL._AC_UL1500_.jpg"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '150',
      thumbnailImages:
          "https://wordans-a1a5.kxcdn.com/files/model_specifications/2011/3/16/2802/2802_big.jpg?1676392303"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '90',
      thumbnailImages:
          "https://img.ltwebstatic.com/images3_pi/2020/05/19/15898538254ace1fe103a6884e4d06fb6abcf7f6c7_thumbnail_900x.webp"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '250',
      thumbnailImages:
          "https://images.tailorstore.com/YToyOntzOjU6IndpZHRoIjtpOjExNTI7czo2OiJoZWlnaHQiO2I6MDt9/images/catalog/Tailor-Store-short-sleeve-tshirt-white.jpg"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '50',
      thumbnailImages:
          "http://cdn.shopify.com/s/files/1/1437/9044/products/vancouver_bridge_t-shirt.jpg?v=1629400980"),
  const Category(
      categoryName: 'T-SHIRT',
      productCount: '40',
      thumbnailImages:
          "https://static.nike.com/a/images/t_default/yql7ozajhdesi8vklgb3/sportswear-t-shirt-FPcVXK.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '70',
      thumbnailImages:
          "https://m.media-amazon.com/images/I/61SgZDS6+RL._AC_UL1500_.jpg"),
  const Category(
      categoryName: 'SHOES',
      productCount: '240',
      thumbnailImages:
          "https://us03-imgcdn.ymcart.com/89311/2022/06/01/6/4/6458a997ee2bcb4c.jpg?x-oss-process=image/quality,Q_90/auto-orient,1/resize,m_lfit,w_700,h_1000/format,webp"),
  const Category(
      categoryName: 'SHOES',
      productCount: '30',
      thumbnailImages:
          "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ea618d2f-e4c6-4119-a97f-c2c09c1561b2/dunk-high-older-shoes-JfWkHc.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '20',
      thumbnailImages:
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae07b5f1-8847-4f07-957b-6bc625b9b308/sb-force-58-skate-shoes-6fn4Wl.png"),
  const Category(
      categoryName: 'SHOES',
      productCount: '60',
      thumbnailImages:
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/280e59b4-bcb5-4a5d-8214-a93c2f47792c/air-deldon-be-true-basketball-shoes-mWJmPk.png"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '350',
      thumbnailImages:
          "http://cdn.shopify.com/s/files/1/2804/0750/products/Hoodie-Men-white-01_600x600.jpg?v=1634939725"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '770',
      thumbnailImages:
          "https://i.ebayimg.com/images/g/naAAAOSwFiNd1pjd/s-l500.jpg"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '240',
      thumbnailImages:
          "https://imagescdn.simons.ca/images/17531/52/4/A1_2.jpg?__=3"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '20',
      thumbnailImages:
          "https://media.boohoo.com/i/boohoo/bmm04400_taupe_xl/mens-taupe-oversized-dove-graphic-zip-hem-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit"),
  const Category(
      categoryName: 'HOODIES',
      productCount: '245',
      thumbnailImages:
          "https://media.boohoo.com/i/boohoo/bmm24788_chocolate_xl?w=537&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit"),
];
