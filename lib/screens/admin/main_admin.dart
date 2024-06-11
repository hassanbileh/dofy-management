import 'package:dofymanager/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MainAdmin extends StatelessWidget {
  const MainAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SideMenuWidget(),
            ),
            const Expanded(
              flex: 7,
              child: DashboardWidget(),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
