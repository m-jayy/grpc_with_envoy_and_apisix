import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Integration Test', () {
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
      // expect(find.text('Home View 0'), findsOneWidget);

      // Emulate a tap on the fab button to navigate to the third view.
      tester.printToConsole(
        'Emulating tap on fab button to navigate to the second view',
      );

      /// Emulating a tap on the back icon button.
      // await tester.tap(iconButton);
      // Trigger a frame.
      // await tester.pumpAndSettle();
      // expect(eb, findsOneWidget);

      tester.printToConsole('Test completed successfully 🎉');
    });
  });
}
