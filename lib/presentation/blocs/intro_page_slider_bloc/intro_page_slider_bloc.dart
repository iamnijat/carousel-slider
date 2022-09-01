import 'dart:async';
import 'package:carousel_slider/core/utils/intro_page_slider_util.dart';
import 'package:carousel_slider/data/models/intro_page_slider_view_model.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'intro_page_slider_event.dart';
part 'intro_page_slider_state.dart';

class IntroPageSliderBloc
    extends Bloc<IntroPageSliderEvent, IntroPageSliderState> {
  IntroPageSliderBloc() : super(IntroPageSliderInitial()) {
    on<IntroPageSliderLoadEvent>(_onBlocLoad);
  }

  /// dynamic pages amount control
  final PageController pageController = PageController(initialPage: 0);
  final _pageIndexStream = BehaviorSubject.seeded(1);
  int currentPage = 0;

  final sliders = <IntroPageSliderViewModel>[];

  /// initialize BloC. Fires on first page touch
  void _onBlocLoad(IntroPageSliderLoadEvent event, emit) {
    emit(IntroPageSliderLoading()); // <- Loading sliders page;

    List<IntroPageSliderViewModel>? slidersList;

    slidersList = IntroPageSliderUtil.items;

    sliders.addAll(slidersList);

    Fimber.d('Sliders entity has been loaded successfully 🔄');
    _buildSlidePages();
    emit(IntroPageSliderLoaded(slidersList));
  }

  /// translate [PageController] index into own stream
  onPageControllerChange(int index) => _pageIndexStream.add(index);

  /// initialize Slide Pages. Fires on first page touch
  void _buildSlidePages() {
    _initPageController();
  }

  /// initialize pageChanged method.
  void onPageChanged(int index) {
    currentPage = index;
  }

  /// initialize page controller method.
  void _initPageController() {
    onPageControllerChange(0);
    pageController.addListener(() => onPageControllerChange(currentPage));
  }

  /// disposing dynamic amounts
  @override
  Future<void> close() {
    _pageIndexStream.close();
    pageController.dispose();
    return super.close();
  }
}

extension IntroPageSliderBlocRxExtension on IntroPageSliderBloc {
  Stream<int> get pageIndexStream => _pageIndexStream.stream;
  int get pageIndexValue => _pageIndexStream.value;
}
