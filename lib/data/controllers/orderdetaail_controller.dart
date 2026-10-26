import 'dart:math';

import 'package:api_test2/data/constants/asset_paths.dart';
import 'package:get/state_manager.dart';

class OrderdetaailController extends GetxController {
  RxList<Map<String, dynamic>> orderdetail_detail = [
    {
      "Imagepath": AppAssetPaths.photo1,
      "productname": "Pullover",
      "productdetail": "Mango",
      "productcolor": "Gray",
      "productsize": "L",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.shop4,
      "productname": "Skirt",
      "productdetail": "trendy zone on point for the best",
      "productcolor": "Pitch",
      "productsize": "M",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.shop1,
      "productname": "Overall",
      "productdetail": "Ready to go anywhere now",
      "productcolor": "Black",
      "productsize": "L",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.shop3,
      "productname": "Pants",
      "productdetail": "Blinky blink",
      "productcolor": "Navy Blue",
      "productsize": "L",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.photo2,
      "productname": "Pullover",
      "productdetail": "Mr/Miss Perfectionist details point",
      "productcolor": "Black",
      "productsize": "S",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.photo4,
      "productname": "Short Gown",
      "productdetail": "Get rich abbys store perfection",
      "productcolor": "Pink",
      "productsize": "L",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.photo1,
      "productname": "T-Shirt",
      "productdetail": "Mango",
      "productcolor": "Green",
      "productsize": "M",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },

    {
      "Imagepath": AppAssetPaths.photo2,
      "productname": "Pullover",
      "productdetail": "Mango",
      "productcolor": "Gray",
      "productsize": "L",
      "productunit": Random().nextInt(200),
      "productprice": Random().nextInt(300),
    },
  ].obs;

  RxList<Map<String, dynamic>> orderinformation = [
    {"shippingaddress": "adreessadress"},
    {"paymentmethod": "VISA"},
    {"deliverymethod": "FedX, 3days"},
    {"discount": "10% perdonalpromo"},
    {"totalamount": Random().nextDouble() * 3000.truncate()},
  ].obs;
}
