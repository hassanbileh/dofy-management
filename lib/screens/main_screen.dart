import 'package:dofymanager/constants/routes.dart';
import 'package:dofymanager/constants/theme.dart';
import 'package:dofymanager/screens/screens.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _loginManager(){
    Navigator.of(context).pushNamedAndRemoveUntil(mainAdmin, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Image.asset(
                'assets/images/train-background.png',
                fit: BoxFit.fill,
              ),
            ),
            LoginView(
              email: _email,
              password: _password,
              onPressed: () => _loginManager(),
            ),
          ],
        ),
      ),
    );
  }
}
