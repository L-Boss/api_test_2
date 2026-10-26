import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: NavBar(index: 3));
  }
}
