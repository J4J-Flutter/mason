import 'package:flutter/material.dart';
import 'package:mason/features/login/provider/provider.dart';
import 'package:mason/features/signup/view/signup_page.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginBody extends ConsumerWidget {
  /// {@macro login_body}
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(loginProvider);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(SignupPage.route());
            },
            child: const Text('Go to Signup Page'),
          ),
        ],
      ),
    );
  }
}
