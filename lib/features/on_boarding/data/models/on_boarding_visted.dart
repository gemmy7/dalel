import 'package:dalel/core/service/cach_helper.dart';
import 'package:dalel/core/service/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
