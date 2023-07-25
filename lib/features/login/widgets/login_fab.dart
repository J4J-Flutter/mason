import 'package:flutter/material.dart';
import 'package:mason/features/login/login.dart';

class LoginFAB extends ConsumerWidget {
  const LoginFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.extended(
          heroTag: null,
          label: const Text('increment'),
          onPressed: () {
            ref.read(loginProvider.notifier).increment();
          },
          icon: const Icon(Icons.add),
        ),
        const SizedBox(width: 8),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            ref.read(loginProvider.notifier).decrement();
          },
          icon: const Icon(Icons.remove),
          label: const Text('decrement'),
        ),
      ],
    );
  }
}
