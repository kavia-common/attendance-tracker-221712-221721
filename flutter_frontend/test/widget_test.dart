import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('App renders first frame quickly', (WidgetTester tester) async {
    // Do not pump durations or trigger async work; just verify tree builds.
    await tester.pumpWidget(const MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
