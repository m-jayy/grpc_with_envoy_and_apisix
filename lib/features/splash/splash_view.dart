import 'package:flutter/material.dart';
import 'package:flutter_template/features/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(
                onPressed: model.testHelloService,
                child: const Text('Test Hello'),
              ),
              // TextButton(
              //   onPressed: model.grpcHitfailed,
              //   child: const Text('hitGrpcFailed'),
              // ),
              //
              // TextButton(
              //   onPressed: model.grpcHit,
              //   child: const Text('hitGrpc'),
              // ),
              // TextButton(
              //   onPressed: model.navigateToTodo,
              //   child: const Text('ToDos'),
              // ),
              // TextButton(
              //   onPressed: model.navigateToCrypto,
              //   child: const Text('Crypto'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
