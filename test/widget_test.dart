import 'package:flutter/material.dart';
import 'package:xylophone_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('To test text name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // find the text 1.
    final text = find.text('Note 1');

    //verify the finder
    expect(text, findsOneWidget);
  });

  testWidgets('To test text button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //verify the finder
    expect(find.byType(TextButton), findsNWidgets(2));
  });

  testWidgets('To test text button background color',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final myTextButton =
        tester.widget<TextButton>(find.byKey(const Key('Note 1')));

    //verify the finder
    expect((myTextButton).style!.backgroundColor, Colors.red);
  });

  testWidgets('To test text button color', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final myTextButton =
        tester.widget<TextButton>(find.byKey(const Key('Note 1')));

    //verify the finder
    expect((myTextButton).style, Colors.red);
  });
}
