part of pages;

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<IntroPageSliderBloc>()..add(IntroPageSliderLoadEvent()),
      child: const Scaffold(
        backgroundColor: AppPalette.whiteColor,
        body: _IntroPageBody(),
      ),
    );
  }
}

class _IntroPageBody extends StatelessWidget {
  const _IntroPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroPageSliderBloc, IntroPageSliderState>(
        builder: (context, state) {
      final bloc = context.read<IntroPageSliderBloc>();

      return PageView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          controller: bloc.pageController,
          onPageChanged: bloc.onPageChanged,
          itemCount: bloc.sliders.length,
          itemBuilder: (ctx, i) => IntroSliderItem(i, bloc));
    });
  }
}
