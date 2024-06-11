import 'package:dofymanager/constants/theme.dart';
import 'package:dofymanager/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
    required this.email,
    required this.password,
    required this.onPressed,
  });

  final TextEditingController email;
  final TextEditingController password;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: CustomGlass(
          borderColor: Colors.transparent,
          height: MediaQuery.sizeOf(context).height * 0.6,
          width: MediaQuery.sizeOf(context).width * 0.3,
          color: Colors.grey.withOpacity(0.1),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Connexion",
                  style: AppTheme.titleTheme,
                ),
              ),
              CustomTextField(
                controller: email,
                fillColor: Colors.transparent,
                borderColor: Colors.purple.withOpacity(0.3),
                hintText: "Entrer votre email ici",
                labelText: "Email",
                kbType: TextInputType.emailAddress,
                prefixIcon: Icons.email,
              ),
              CustomTextField(
                controller: password,
                fillColor: Colors.transparent,
                borderColor: Colors.purple.withOpacity(0.3),
                hintText: "Entrer votre mot de passe ici",
                labelText: "Mot de passe",
                kbType: TextInputType.visiblePassword,
                prefixIcon: Icons.key,
                isP: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GradientButton(
                    buttonText: "Connecter",
                    onPressed: onPressed,
                    height: 40,
                    width: 150),
              )
            ],
          ),
        ),
      ),
    );
  }
}
