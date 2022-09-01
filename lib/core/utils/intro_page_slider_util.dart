import 'package:carousel_slider/core/constants/assets.dart';
import 'package:carousel_slider/data/models/intro_page_slider_view_model.dart';

class IntroPageSliderUtil {
  static List<IntroPageSliderViewModel> get items {
    return [
      const IntroPageSliderViewModel(
        imgUrl: AppAssets.introSliderFirstImage,
        title: 'Lively foreign currency exchange rates',
        desc:
            'It can be easily used with lively currency rates and cached currencies which is possible without Internet',
      ),
      const IntroPageSliderViewModel(
        imgUrl: AppAssets.introSliderFirstImage,
        title: 'Currency Exchange Rates Calculator',
        desc:
            'Exchange icon will make your job easier to convert currency values',
      ),
      const IntroPageSliderViewModel(
        imgUrl: AppAssets.introSliderFirstImage,
        title: 'Language Options',
        desc:
            'We have 4 language options and thanks to this, you can be more familiar with Coin Currency',
      ),
      const IntroPageSliderViewModel(
        imgUrl: AppAssets.introSliderFirstImage,
        title: 'Activity Tracker',
        desc:
            'The conversions you did will be placed in cached currencies data and you can view them without Internet connection',
      ),
    ];
  }
}
