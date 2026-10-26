import 'package:api_test2/presentation/routes/routes/routes.dart';
import 'package:api_test2/presentation/screens/allpages/allpages.dart';
import 'package:api_test2/presentation/screens/full_product_detail/full_product_detail.dart';
import 'package:api_test2/presentation/screens/home/home.dart';
import 'package:api_test2/presentation/screens/login/login.dart';
import 'package:api_test2/presentation/screens/profile/order/order.dart';
import 'package:api_test2/presentation/screens/profile/order/order_detail.dart';
import 'package:api_test2/presentation/screens/profile/profile.dart';
import 'package:api_test2/presentation/screens/profile/settings/settings.dart';
import 'package:api_test2/presentation/screens/shop/shop.dart';
import 'package:api_test2/presentation/screens/shop/shop_list.dart';
import 'package:api_test2/presentation/screens/signup/signup.dart';
import 'package:api_test2/presentation/screens/splash/splash.dart';
import 'package:api_test2/presentation/screens/streetclothes/streetclothes.dart';
import 'package:api_test2/presentation/visualsearch/visualsearch.dart';
import 'package:api_test2/presentation/widgets/collection_widget/collection_widget.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Pages {
  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => Splash()),
    GetPage(name: Routes.SIGNUP, page: () => Signup()),
    GetPage(name: Routes.LOGIN, page: () => Login()),
    GetPage(name: Routes.HOME, page: () => Home()),
    GetPage(name: Routes.ALLPAGES, page: () => AllPages()),
    GetPage(name: Routes.COLLECTION, page: () => Collections()),
    GetPage(name: Routes.STREETWARES, page: () => Streetclothes()),
    GetPage(name: Routes.VISUALSEARCH, page: () => VisualSearch()),
    GetPage(name: Routes.PROFILE, page: () => Profile()),
    GetPage(name: Routes.ORDER, page: () => Orders()),
    GetPage(name: Routes.ORDERDETAILS, page: () => OrderDetail()),
    GetPage(name: Routes.SHOP, page: () => Shop()),
    GetPage(name: Routes.SHOPLIST, page: () => ShopList()),
    GetPage(name: Routes.SETTINGS, page: () => Settings()),
    GetPage(name: Routes.FULLPRODUCTDETAIL, page: () => FullProductDetail()),
  ];
}
