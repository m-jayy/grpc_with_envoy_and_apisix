// import 'package:todo/common/custom_route_transition.dart';
import 'package:flutter_template/common/dialogs/basic_dialog.dart';
import 'package:flutter_template/common/grpc/client_channel/grpc_client_channel.dart';
import 'package:flutter_template/common/widgets/generic_bottomsheet.dart';
import 'package:flutter_template/features/splash/splash_view.dart';
import 'package:flutter_template/services/information_service.dart';
import 'package:flutter_template/services/locale_service.dart';
import 'package:flutter_template/services/networkinfo_service.dart';
import 'package:flutter_template/services/sample_service.dart';
import 'package:flutter_template/services/test_hello_service.dart';
import 'package:grpc/service_api.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  bottomsheets: [
    StackedBottomsheet(classType: GenericBottomSheet),
  ],
  dialogs: [
    StackedDialog(classType: BasicDialog),
  ],
  routes: [
    MaterialRoute(page: SplashView, initial: true),

    // EXAMPLES:
    // CustomRoute(
    //   page: HomeView,
    //   transitionsBuilder: CustomRouteTransition.sharedAxis,
    // ),
    // MaterialRoute(page: BottomNavExample, children: [
    //   AdaptiveRoute(
    //     page: FavoritesView,
    //     children: [
    //       MaterialRoute(page: MultipleFuturesExampleView),
    //       CustomRoute(page: HistoryView),
    //     ],
    //   ),
    //   CustomRoute(
    //     page: HistoryView,
    //     transitionsBuilder: TransitionsBuilders.fadeIn,
    //   ),
    //   CupertinoRoute(page: ProfileView),
    // ]),
    // MaterialRoute(page: StreamCounterView),
    // MaterialRoute(page: ExampleFormView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(
      classType: NavigationService,
      environments: {Environment.dev},
    ),
    // LazySingleton(
    //   classType: NavigationService,
    //   environments: {Environment.dev},
    //   instanceName: 'instance1',
    // ),
    // FactoryWithParam(classType: TodosApiService),
    LazySingleton(classType: LocaleService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: NetworkInfoServiceImpl),
    LazySingleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),
    LazySingleton(classType: InformationService),

    LazySingleton(
      classType: GrpcClientChannel,
      asType: ClientChannel,
      resolveUsing: GrpcClientChannel.createClientChannel,
    ),
    Presolve(
      asType: ITestHelloService,
      classType: TestHelloService,
      presolveUsing: TestHelloService.create,
      environments: {Environment.dev},
    ),

    Presolve(
      asType: ISampleService,
      classType: TestSampleService,
      presolveUsing: TestSampleService.create,
      environments: {Environment.dev},
    ),


    // EXAMPLES:
    // singletons
    // Singleton(classType: HistoryViewModel),
    // Singleton(classType: FavoritesViewModel),
  ],
  logger: StackedLogger(),
  locatorName: 'todoLocator',
  locatorSetupName: 'setupTodoLocator',
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
