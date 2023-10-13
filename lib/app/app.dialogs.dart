// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../common/dialogs/basic_dialog.dart';

enum DialogType {
  basic,
}

void setupDialogUi() {
  final dialogService = todoLocator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.basic: (context, request, completer) =>
        BasicDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
