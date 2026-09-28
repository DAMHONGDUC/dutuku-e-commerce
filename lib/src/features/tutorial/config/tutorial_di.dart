import 'package:tuku_shop/src/di/injector.dart';
import 'package:tuku_shop/src/features/tutorial/tutorial_controller.dart';

class TutorialDi {
  static config() {
    getIt.registerFactory<TutorialController>(() => TutorialController());
  }
}
