part of 'bassure_textfield.dart';

// ignore: camel_case_types
class AppBar_FormField extends StatefulWidget {
  final String text;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final Gradient gradient;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final Color textColor;
  final double textFontSize;
  final double prefixIconSize;
  final double suffixIconSize;
  final void Function() prefixIconOnPressed;
  final void Function() suffixIconOnPressed;
  final double appbarWidth;
  final double appbarHeight;
  final BorderRadiusGeometry borderRadius;

  const AppBar_FormField({
    Key key,
    this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconOnPressed,
    this.suffixIconOnPressed,
    this.gradient,
    this.prefixIconColor,
    this.suffixIconColor,
    this.textColor,
    this.textFontSize,
    this.prefixIconSize,
    this.suffixIconSize,
    this.appbarWidth,
    this.appbarHeight,
    this.borderRadius,
  }) : super(key: key);
  @override
  _AppBar_FormFieldState createState() => _AppBar_FormFieldState();
}

// ignore: camel_case_types
class _AppBar_FormFieldState extends State<AppBar_FormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, getTopPadding(context), 0, 0),
      decoration: widget.gradient != null
          ? BoxDecoration(
              gradient: widget.gradient,
              borderRadius: widget.borderRadius,
            )
          : BoxDecoration(color: Colors.brown),
      width: widget.appbarWidth,
      height: widget.appbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.prefixIcon != null
              ? IconButton(
                  icon: widget.prefixIcon,
                  onPressed: widget.prefixIconOnPressed,
                  color: widget.prefixIconColor,
                  iconSize: widget.prefixIconSize,
                )
              : Container(),
          widget.text != null
              ? Text(
                  widget.text,
                  style: TextStyle(color: widget.textColor, fontSize: widget.textFontSize),
                )
              : Container(),
          widget.suffixIcon != null
              ? IconButton(
                  icon: widget.suffixIcon,
                  onPressed: widget.suffixIconOnPressed,
                  color: widget.suffixIconColor,
                  iconSize: widget.suffixIconSize,
                )
              : Container(),
        ],
      ),
    );
  }
}
