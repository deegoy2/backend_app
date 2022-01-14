import 'package:backend_app/models/meme_controller.dart';
import 'package:backend_app/models/meme_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:backend_app/app_model.dart';

GetIt getIt = GetIt.instance;

void setup(){
  getIt.registerLazySingleton<MemeRepo>(() => MemeRepo());
  getIt.registerLazySingleton<MemeDomainController>(() => MemeDomainController());
  // getIt.registerSingleton<AppModel>(AppModelImplementation(), signalsReady: true);
}