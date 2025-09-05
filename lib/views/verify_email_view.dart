import 'package:app_reem/constants/routes.dart';
import 'package:app_reem/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify you email address'),
      ),
      body: Column(
          children: [
            const Text("We've sent you an email verificaton. Open it to verify your account."),
            const Text("If you haven't recieved a verification email yet, press the button below"),
            TextButton(onPressed: () async {
            await AuthService.firebase().sendEmailVerification();          
            }, 
            child: const Text('Send email verification'),
            ),
            TextButton(onPressed: () async {
             AuthService.firebase().logOut();
             Navigator.of(context).pushNamedAndRemoveUntil(
              registerRoute
             , (route)=> false,
             );
            }, child: const Text('Back to Sign up'),
            )
          ],
        ),
    );
  

  


  



}
}
