import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('App renders first frame without exceptions', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Should at least find a MaterialApp or a Scaffold in the tree.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
