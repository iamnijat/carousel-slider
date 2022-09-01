import 'package:equatable/equatable.dart';

class IntroPageSliderViewModel extends Equatable {
  final String? imgUrl;
  final String? title;
  final String? desc;

  const IntroPageSliderViewModel({
    required this.imgUrl,
    required this.title,
    required this.desc,
  });

  @override
  List<Object?> get props => [imgUrl, title, desc];
}
