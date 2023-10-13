import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/app/app.locator.dart';
import 'package:flutter_template/app/app.router.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/services/locale_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  setupTodoLocator(environment: Environment.dev);
  runApp(const MyApp());
}

class MyAppViewModel extends ReactiveViewModel {
  final _localeService = todoLocator<LocaleService>();

  Locale get locale => _localeService.currentLocale;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_localeService];

  void initialise() {
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyAppViewModel>.reactive(
      viewModelBuilder: () => MyAppViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, model, _) => MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('ur', 'PK'),
          Locale('ar', 'SA'),
        ],
        title: 'ToDo Demo',
        locale: model.locale,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
