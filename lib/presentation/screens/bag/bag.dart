import 'package:api_test2/presentation/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class Bag extends StatelessWidget {
  const Bag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: NavBar(index: 2));
  }
}
