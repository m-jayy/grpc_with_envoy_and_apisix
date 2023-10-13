import 'package:flutter_template/app/app.locator.dart';
import 'package:flutter_template/app/app.router.dart';
import 'package:flutter_template/services/sample_service.dart';
import 'package:flutter_template/services/test_hello_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final String _title = "Splash View";
  String get title => _title;
  final testService = todoLocator<ISampleService>();
  final testHello = todoLocator<ITestHelloService>();


  Future<void> testHelloService() async {
    await testHello.helloFromTheOtherSide();
    // await testService.getSamples();
  }

  Future<void> grpcHitfailed() async {
    await testService.getIllegalArgumentException();
    // await testService.getSamples();
  }
  Future<void> grpcHit() async {
    // await testService.getIllegalArgumentException();
    await testService.getSamples();
  }
}
