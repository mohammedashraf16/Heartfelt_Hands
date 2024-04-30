import 'package:get_it/get_it.dart';
import 'package:heartfelt_hands/features/auth/presentation/auth_cubit/auth_cubit.dart';

final getIt = GetIt.instance;
void setupServiceLocator(){
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}