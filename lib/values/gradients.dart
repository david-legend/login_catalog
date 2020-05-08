part of values;

class Gradients {
  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.green,
      AppColors.greenShade1,
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

  static const LinearGradient curvesGradient3 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF88CEBC),
      Color(0xFF69C7C6),
    ],
  );
}
