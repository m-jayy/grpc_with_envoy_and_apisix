import 'package:flutter_template/app/app.locator.dart';
import 'package:flutter_template/services/information_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stacked/stacked_annotations.dart';

void main() {
  group('StackedExampleTest -', () {
    group('test -', () {
      test('test counter changes in InformationService', () {
        setupTodoLocator(environment: Environment.dev);
        final InformationService informationService =
            todoLocator<InformationService>();
        informationService.resetCount();
        expect(informationService.postCount, 0);
        informationService.updatePostCount();
        informationService.updatePostCount();
        informationService.updatePostCount();
        expect(informationService.postCount, 3);
      });
    });
  });
}
