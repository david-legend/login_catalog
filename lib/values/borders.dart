part of values;

class Borders {
  static const BorderSide defaultPrimaryBorder =
      BorderSide(width: Sizes.WIDTH_0, style: BorderStyle.none);

  static const BorderSide primaryBorder = BorderSide(
    width: Sizes.WIDTH_1,
    style: BorderStyle.solid,
    color: AppColors.violetShade1,
  );
}
