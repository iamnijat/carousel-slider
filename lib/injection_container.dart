import 'package:carousel_slider/presentation/blocs/intro_page_slider_bloc/intro_page_slider_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  _setupBlocs();
}

//* Blocs
void _setupBlocs() {
  getIt.registerFactory(() => IntroPageSliderBloc());
}
