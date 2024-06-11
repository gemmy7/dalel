import 'package:dalel/core/service/cach_helper.dart';
import 'package:dalel/features/auth/presentaion/Views_models/cubit/login_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerFactory(() => LoginCubit());
}
