import 'package:dravya/common/widgets/custom_shapes/container/primary_header_container.dart';

import 'package:dravya/features/shop/screens/home/widgets/home_appbar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DPrimaryHeaderContainer(child: Column(children: [DHomeAppBar()])),
          ],
        ),
      ),
    );
  }
}
