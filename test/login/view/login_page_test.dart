// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mason/features/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginPage', () {
    group('route', () {
      test('is routable', () {
        expect(LoginPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders LoginView', (tester) async {
      await tester
          .pumpWidget(ProviderScope(child: MaterialApp(home: LoginPage())));
      expect(find.byType(LoginView), findsOneWidget);
    });

    testWidgets("increment fab raise value", (tester) async {
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: LoginPage(),
        ),
      ));
      expect(find.text('0'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets("decrement fab lower value", (tester) async {
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: LoginPage(),
        ),
      ));
      expect(find.text('0'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();
      expect(find.text('-1'), findsOneWidget);
    });
  });
}
