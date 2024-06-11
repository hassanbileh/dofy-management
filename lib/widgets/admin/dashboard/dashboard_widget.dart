import 'package:dofymanager/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18.0,),
        HeaderWidget(),
      ],
    );
  }
}