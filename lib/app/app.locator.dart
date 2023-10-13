// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:grpc/src/client/channel.dart';
import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';
import 'package:stacked_shared/stacked_shared.dart';
import 'package:stacked_themes/src/theme_service.dart';

import '../common/grpc/client_channel/grpc_client_channel.dart';
import '../services/information_service.dart';
import '../services/locale_service.dart';
import '../services/networkinfo_service.dart';
import '../services/sample_service.dart';
import '../services/test_hello_service.dart';

final todoLocator = StackedLocator.instance;

Future<void> setupTodoLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  todoLocator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  todoLocator.registerLazySingleton(() => DialogService());
  todoLocator.registerLazySingleton(() => BottomSheetService());
  todoLocator
      .registerLazySingleton(() => NavigationService(), registerFor: {"dev"});
  todoLocator.registerLazySingleton(() => LocaleService());
  todoLocator.registerLazySingleton(() => SnackbarService());
  todoLocator.registerLazySingleton(() => NetworkInfoServiceImpl());
  todoLocator.registerLazySingleton(() => ThemeService.getInstance());
  todoLocator.registerLazySingleton(() => InformationService());
  todoLocator.registerLazySingleton<ClientChannel>(
      () => GrpcClientChannel.createClientChannel());
  final testHelloService = await TestHelloService.create();
  todoLocator.registerSingleton<ITestHelloService>(testHelloService,
      registerFor: {"dev"});

  final testSampleService = await TestSampleService.create();
  todoLocator.registerSingleton<ISampleService>(testSampleService,
      registerFor: {"dev"});
}
