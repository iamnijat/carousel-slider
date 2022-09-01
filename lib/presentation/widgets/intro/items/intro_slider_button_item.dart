part of widgets;

class IntroSliderButtonItem extends StatelessWidget {
  const IntroSliderButtonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 7.h,
      decoration: AppStyles.mainBlueColorBoxDecorationStyle,
      child: Material(
        color: AppPalette.transparentColor,
        child: Center(
            child: Text("Let's start",
                style: AppStyles.whiteColor15spw700NotoSans)),
      ),
    );
  }
}
