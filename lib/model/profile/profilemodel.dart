import 'package:api_test2/presentation/routes/routes/routes.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

RxList<Map<String, dynamic>> items = [
  {
    "label": "My Orders",
    "content": "Already have 12 Orders",
    "route": Routes.ORDER,
  },

  {"label": "Shipping addresses", "content": "3 addresses"},
  {"label": "Payment Method", "content": "Visa ****34"},
  {"label": "Promocodes", "content": "You have special promocodes"},
  {"label": "My Reviews", "content": "Reviews for 4 items"},

  {
    "label": "Settings",
    "content": "Notifications, Passwords",
    "route": Routes.SETTINGS,
  },
].obs;
