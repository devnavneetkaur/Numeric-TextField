# generic_textfield

A new generic textfield for both android and iOS which helps develeopers in creating numeric textfield.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

To use this package :

add the dependency to your pubspec.yaml file.
  dependencies:
    flutter:
      sdk: flutter
    generic_textfield:


  ###How to use

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

###Pull Requests
I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

1.Match coding style (braces, spacing, etc.) This is best achieved using Reformat Code feature of Android Studio CMD+Option+L on Mac and CTRL + ALT + L on Linux + Windows .
2.If its a feature, bugfix, or anything please only change code to what you specify.
3.Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge :)
4.Pull requests must be made against develop branch. Any other branch (unless specified by the maintainers) will get rejected.
5.Check for existing issues first, before filing an issue.
6.Make sure you follow the set standard as all other projects in this repo do
7.Have fun!
