import 'package:flutter/material.dart';
import 'package:xylophone_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
testWidgets('To test text name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // find the text 1.
    final text = find.text('1');

    //verify the finder
    expect(text, findsOneWidget);
  });
}