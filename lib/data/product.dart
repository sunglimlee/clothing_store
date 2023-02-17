// import 해주어야 한다.
import 'package:freezed_annotation/freezed_annotation.dart';

// 이름 형식 잘보자.
part 'product.freezed.dart'; // freezed package 에서 생서하는 파일
part 'product.g.dart'; // json serializable 하면 생성

// 맨처음 $freezed 를 넣으면 밑에 클래스를 자동으로 생성
@freezed
class Product with _$Product {
  // @Assert 내용 참조
  @Assert('productName.length > 2', '프로덕트 이름은 10보다 커야 합니다.')
  const factory Product({
    // 내가 만든 함수를 넣기 위해서 const 제거해야 함.
    // 여기에 필요한 필드들을 넣어준다.
    required String productName,
    required String productImageUrl,
    required String currentPrice,
    required String oldPrice,
    required bool isLiked,
  }) = _Product;

  // json 입출력을 위해서 필요한다. to 는 자동생성된다. // 여기 factory 는 특이하게 _$가 들어간다.
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

// product dummy data
final products = [
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://m.media-amazon.com/images/I/91tZTh+UvcL._AC_UL1500_.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://wordans-a1a5.kxcdn.com/files/model_specifications/2011/3/16/2802/2802_big.jpg?1676392303",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://img.ltwebstatic.com/images3_pi/2020/05/19/15898538254ace1fe103a6884e4d06fb6abcf7f6c7_thumbnail_900x.webp",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "http://cdn.shopify.com/s/files/1/1437/9044/products/vancouver_bridge_t-shirt.jpg?v=1629400980",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/t_default/yql7ozajhdesi8vklgb3/sportswear-t-shirt-FPcVXK.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://m.media-amazon.com/images/I/61SgZDS6+RL._AC_UL1500_.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://us03-imgcdn.ymcart.com/89311/2022/06/01/6/4/6458a997ee2bcb4c.jpg?x-oss-process=image/quality,Q_90/auto-orient,1/resize,m_lfit,w_700,h_1000/format,webp",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ea618d2f-e4c6-4119-a97f-c2c09c1561b2/dunk-high-older-shoes-JfWkHc.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae07b5f1-8847-4f07-957b-6bc625b9b308/sb-force-58-skate-shoes-6fn4Wl.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/280e59b4-bcb5-4a5d-8214-a93c2f47792c/air-deldon-be-true-basketball-shoes-mWJmPk.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "http://cdn.shopify.com/s/files/1/2804/0750/products/Hoodie-Men-white-01_600x600.jpg?v=1634939725",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://i.ebayimg.com/images/g/naAAAOSwFiNd1pjd/s-l500.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://imagescdn.simons.ca/images/17531/52/4/A1_2.jpg?__=3",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://media.boohoo.com/i/boohoo/bmm04400_taupe_xl/mens-taupe-oversized-dove-graphic-zip-hem-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://media.boohoo.com/i/boohoo/bmm24788_chocolate_xl?w=537&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://m.media-amazon.com/images/I/91tZTh+UvcL._AC_UL1500_.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://wordans-a1a5.kxcdn.com/files/model_specifications/2011/3/16/2802/2802_big.jpg?1676392303",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://img.ltwebstatic.com/images3_pi/2020/05/19/15898538254ace1fe103a6884e4d06fb6abcf7f6c7_thumbnail_900x.webp",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "http://cdn.shopify.com/s/files/1/1437/9044/products/vancouver_bridge_t-shirt.jpg?v=1629400980",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/t_default/yql7ozajhdesi8vklgb3/sportswear-t-shirt-FPcVXK.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://m.media-amazon.com/images/I/61SgZDS6+RL._AC_UL1500_.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://us03-imgcdn.ymcart.com/89311/2022/06/01/6/4/6458a997ee2bcb4c.jpg?x-oss-process=image/quality,Q_90/auto-orient,1/resize,m_lfit,w_700,h_1000/format,webp",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ea618d2f-e4c6-4119-a97f-c2c09c1561b2/dunk-high-older-shoes-JfWkHc.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae07b5f1-8847-4f07-957b-6bc625b9b308/sb-force-58-skate-shoes-6fn4Wl.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/280e59b4-bcb5-4a5d-8214-a93c2f47792c/air-deldon-be-true-basketball-shoes-mWJmPk.png",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "http://cdn.shopify.com/s/files/1/2804/0750/products/Hoodie-Men-white-01_600x600.jpg?v=1634939725",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://i.ebayimg.com/images/g/naAAAOSwFiNd1pjd/s-l500.jpg",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://imagescdn.simons.ca/images/17531/52/4/A1_2.jpg?__=3",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://media.boohoo.com/i/boohoo/bmm04400_taupe_xl/mens-taupe-oversized-dove-graphic-zip-hem-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: true,
  ),
  const Product(
    productName: "MNML - Oversized Tshirt",
    productImageUrl:
        "https://media.boohoo.com/i/boohoo/bmm24788_chocolate_xl?w=537&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit",
    currentPrice: "500",
    oldPrice: "700",
    isLiked: false,
  ),
];
