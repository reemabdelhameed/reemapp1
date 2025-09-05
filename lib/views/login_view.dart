import 'package:app_reem/constants/routes.dart';
import 'package:app_reem/utilities/show_error_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
late final TextEditingController _email;
late final TextEditingController _password;
@override
  void initState() {
    _email= TextEditingController();
    _password= TextEditingController();
    super.initState();
  }

@override
  void dispose() {
 _email.dispose();
 _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: Column(
            children: [
              TextField(controller: _email,enableSuggestions: false,autocorrect: false,keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(hintText:'Enter email' ),),
              TextField(controller: _password,obscureText: true,enableSuggestions: false,autocorrect: false, decoration: const InputDecoration(hintText: 'Enter password'),),
              TextButton(onPressed: () async {
           
          
                final email= _email.text;
                final password= _password.text;
              try {
                 await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                   password: password
                   );
                   if(!mounted) return;
              Navigator.of(context).pushNamedAndRemoveUntil(
                mainRoute, 
              (route)=> false,
                 );
              } 
              on FirebaseAuthException catch (e)  {
                if(!mounted) return;
            
                if (e.code == 'user-not-found')
                {
                  await showErrorDialog(
                    context,
                   'User not found',
                  );
                } else if (e.code == 'wrong-password'){
                  await showErrorDialog(
                    context,
                   'Wrong credentials',
                  );
                } else if(e.code == 'invalid-credential'){
                  await showErrorDialog(
                    context,
                   'Invalid credentials',);
                }
                else if(e.code == 'channel-error'){
                  await showErrorDialog(
                    context,
                   'Empty text field',);
                }
                else {
                   await showErrorDialog(
                    context,
                   'Error: ${e.code}',
                   );
                }
              } catch (e) {
                await showErrorDialog(
                    context,
                   e.toString(),
                   );
              }
               
              }, 
              child: const Text('Login'),),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                 (route)=> false, );
              }, 
              child: Text('Don\'t have an account? Sign up here'),
              )
            ],
          ),
    ); 
        }
      }

      