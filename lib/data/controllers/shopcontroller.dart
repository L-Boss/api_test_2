import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:get/state_manager.dart';

class ShopController extends GetxController {
  RxList<Map<String, dynamic>> categories = [
    {"label": "New", "imagepath": AppAssetPaths.shop1},
    {"label": "Clothes", "imagepath": AppAssetPaths.shop2},
    {"label": "Shoes", "imagepath": AppAssetPaths.shop3},
    {"label": "Accessories", "imagepath": AppAssetPaths.shop4},
    {"label": "New", "imagepath": AppAssetPaths.shop1},
    {"label": "Clothes", "imagepath": AppAssetPaths.shop2},
    {"label": "Shoes", "imagepath": AppAssetPaths.shop3},
    {"label": "Accessories", "imagepath": AppAssetPaths.shop4},
    {"label": "New", "imagepath": AppAssetPaths.shop1},
    {"label": "Clothes", "imagepath": AppAssetPaths.shop2},
    {"label": "Shoes", "imagepath": AppAssetPaths.shop3},
    {"label": "Accessories", "imagepath": AppAssetPaths.shop4},
  ].obs;

  RxList categorieslist = [
    "Tops",
    "Shirts & Blouses",
    "Cardigans & Sweaters",
    "Knitwears",
    "Blazers",
    "Outwears",
    "Pants",
    "Jeans",
    "Shorts",
    "Skirts",
    "Dresses",
  ].obs;
}
