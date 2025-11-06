import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('Shows splash progress indicator on start', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // initial route is SplashRouterGate which shows a CircularProgressIndicator
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Navigates to Login or Attendance after splash', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // allow navigation microtask to process
    await tester.pump(const Duration(milliseconds: 100));
    // Either Login or Attendance scaffold is expected
    expect(find.text('Login').hitTestable(), findsAny);
  });
}
