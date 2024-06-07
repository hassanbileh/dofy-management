import 'package:dofymanager/constants/theme.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.8,
        width: MediaQuery.sizeOf(context).width * 0.3,
        color: Colors.grey[200],
        child: const Column(
          children: [
            Row(
              children: [
                const Text("Veuillez vous", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Connecter",
                  style: AppTheme.titleTheme,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
