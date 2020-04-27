part of values;

class Gradients {
  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.green,
      AppColors.greeShade1,
    ],
  );

  static const LinearGradient curvesGradient1 = LinearGradient(
    colors: [
      AppColors.orange,
      AppColors.orangeShade1,
      AppColors.deepOrange,
    ],
  );

  static const LinearGradient curvesGradient2 = LinearGradient(
    colors: [
      AppColors.seaBlue3,
      AppColors.seaBlue2,
      AppColors.seaBlue1,
    ],
  );
}
