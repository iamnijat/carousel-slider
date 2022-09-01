part of widgets;

class IntroSliderItem extends StatelessWidget {
  final int index;
  final IntroPageSliderBloc _introBloc;

  const IntroSliderItem(this.index, this._introBloc, {Key? key})
      : super(key: key);

  List<IntroPageSliderViewModel>? get model => _introBloc.sliders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 4.h,
        ),
        IntroSliderMaterialItem(
          imgUrl: model![index].imgUrl.toString(),
        ),
        IntroSliderTitleItem(
          title: model![index].title.toString(),
        ),
        SizedBox(
          height: 2.h,
        ),
        IntroSliderDescriptionItem(
          desc: model![index].desc.toString(),
        ),
        SizedBox(
          height: 2.h,
        ),
        const Spacer(),
        buildSlideDots(context),
      ],
    );
  }

  StreamBuilder buildSlideDots(BuildContext context) {
    return StreamBuilder<int>(
        stream: _introBloc.pageIndexStream,
        builder: (context, snapshot) {
          final pageIndex = snapshot.data ?? 0;
          final lastIndex = model!.length - 1;
          return Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Column(
              children: <Widget>[
                AnimatedOpacity(
                  opacity: pageIndex == lastIndex ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 750),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: const IntroSliderButtonItem(),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                IntroSliderDots(
                    currentPage: pageIndex, sliderListLength: model!.length),
              ],
            ),
          );
        });
  }
}
