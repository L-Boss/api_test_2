import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:api_test2/presentation/routes/routes/routes.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  final RxList<Map<String, dynamic>> cardproperty = [
    {
      "discount": "10%",
      "ratingcount": 10,
      "productname": "Dorothy Perkin",
      "productcategory": "Evening Dress",
      "productimage": AppAssetPaths.photo1,
      "previousprice": 15,
      "price": 20,
      "route": Routes.FULLPRODUCTDETAIL,
    },

    {
      "discount": "20%",
      "ratingcount": 10,
      "productname": "Sitlly",
      "productcategory": "Sport Dress",
      "productimage": AppAssetPaths.photo2,
      "previousprice": 22,
      "price": 19,
      "route": Routes.FULLPRODUCTDETAIL,
    },

    {
      "discount": "New",
      "ratingcount": 100,
      "productname": "Dorothy Perkin",
      "productcategory": "Evening Dress",
      "productimage": AppAssetPaths.photo3,
      "previousprice": 15,
      "price": 20,
      "route": Routes.FULLPRODUCTDETAIL,
    },

    {
      "discount": "New",
      "ratingcount": 0,
      "productname": "Mango Boy",
      "productcategory": "Pullover",
      "productimage": AppAssetPaths.photo4,
      "previousprice": 18,
      "price": 12,
      "route": Routes.FULLPRODUCTDETAIL,
    },

    {
      "discount": "New",
      "ratingcount": 1,
      "productname": "OVS",
      "productcategory": "Blouse",
      "productimage": AppAssetPaths.photo1,
      "previousprice": 30,
      "price": 20,
      "route": Routes.FULLPRODUCTDETAIL,
    },
  ].obs;
}
