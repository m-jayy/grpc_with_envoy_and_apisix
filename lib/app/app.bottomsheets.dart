// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../common/widgets/generic_bottomsheet.dart';

enum BottomSheetType {
  genericBottom,
}

void setupBottomSheetUi() {
  final bottomsheetService = todoLocator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.genericBottom: (context, request, completer) =>
        GenericBottomSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
