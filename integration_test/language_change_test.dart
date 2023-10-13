import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Language Change Test', () {
    testWidgets('Ensure all stacked integrations still work as expected',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      app.main();
      await tester.pumpAndSettle();

      // Arrange

      // Home View Widgets
      final initialisedText = find.text('ToDos');

      // General Widget
      final eb = find.byType(TextButton);

      // Home View Test
      tester.printToConsole('Home view Testing');

      // Verify the widgets are present.
      tester.printToConsole('Verify the widgets are present');
      expect(initialisedText, findsOneWidget);

      // Emulate a tap on the widget one button 3 times.
      tester.printToConsole('Emulating tap on button');
      await tester.tap(eb);
      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the widget one and two text has been updated to 3.
      tester.printToConsole(
        'Verifying transition',
      );

      expect(
        find.text('Home Page'),
        findsOneWidget,
      ); // Tap on the globe icon in the app bar to open language selection
      // await $(#languageMenu).tap();
      await tester.tap(find.byKey(const Key('languageMenu')).last);
      // Tap on Urdu language selection in the drop down
      // await $(#ur).last.tap();
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('ur')).last);
      await tester.pumpAndSettle();
      // Verify that the app language has changed to Urdu
      expect(find.text('مرکزی صفحہ'), findsOneWidget);

      tester.printToConsole('Test completed successfully 🎉');
    });
  });
}
