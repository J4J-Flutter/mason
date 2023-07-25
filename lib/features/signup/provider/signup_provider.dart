import "../provider/provider.dart";

final signupProvider = StateNotifierProvider.autoDispose((ref) {
  return Signup();
});

class Signup extends StateNotifier<int> {
  Signup() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
