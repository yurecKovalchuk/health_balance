import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../app/app.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Health balance', style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w600,),),
              const SizedBox(height: 36,),
              ElevatedButton(
                onPressed: () => context.go(AppRoutInfo.healthScreen.path),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(62.0),),
                child: const Text('Enter'),
              ),
          ],
        ),
      ),
    );
  }
}
// ElevatedButton(
// onPressed: () {
// bloc.signIn(
// _email.text,
// _password.text,
// );
// },
// style: ElevatedButton.styleFrom(
// minimumSize: const Size.fromHeight(kButtonHeight),
// backgroundColor: colorScheme.primary,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(46),
// )),
// child: state.status == SignInStatus.loading
// ? const CircularProgressIndicator(
// color: Colors.white,
// )
//     : Text(context.l10n.login),
// ),
