import 'package:flutter/material.dart';
import 'package:mason/features/signup/provider/provider.dart';

/// {@template signup_body}
/// Body of the SignupPage.
///
/// Add what it does
/// {@endtemplate}
class SignupBody extends ConsumerWidget {
  /// {@macro signup_body}
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(signupProvider);
    return Text(count.toString());
  }
}
