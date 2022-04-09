import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xylophone_app/main.dart' as app;
import 'package:integration_test/integration_test.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Tap text button 1 for 3 times', (WidgetTester tester) async {
    //arrange
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('Note 1'), findsOneWidget);

    void playSound(int soundNumber) {
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }

    final Finder button = find.text('Note 1');

    //act

    for (var i = 0; i < 3; i++) {
      await tester.tap(button);
      await Future.delayed(const Duration(seconds: 3));
    }

    await tester.pumpAndSettle();

    //assert
    expect(find.text('Note 1'), findsOneWidget);
  });
}
