part of 'bassure_textfield.dart';

// ignore: camel_case_types
class Bassure_TextField extends StatefulWidget {
  final bool enable;
  final String label;
  final int maxLength;
  final String hintText;
  final Widget suffixIcon;
  final TextAlign textAlign;
  final double containerWidth;
  final double containerHeight;
  final TextInputType keyboardType;
  final double labelFontSize;
  final FontWeight labelFontWeight;
  final Color labelFontColor;
  final void Function(String) onchanged;
  final EdgeInsetsGeometry contentPadding;
  final EdgeInsetsGeometry containerMargin;
  final EdgeInsetsGeometry labelMargin;
  final EdgeInsetsGeometry containerPadding;
  final EdgeInsetsGeometry labelPadding;
  final AlignmentGeometry containerAlignment;
  final AlignmentGeometry labelAlignment;
  final List<TextInputFormatter> inputFormatters;
  final bool maxLengthEnforcement;
  final TextEditingController textEditingController;

  const Bassure_TextField({
    Key key,
    this.containerWidth,
    this.containerMargin,
    this.containerPadding,
    this.containerAlignment,
    this.containerHeight,
    this.textEditingController,
    this.hintText,
    this.enable,
    this.contentPadding,
    this.suffixIcon,
    this.textAlign,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onchanged,
    this.label,
    this.labelFontSize,
    this.labelFontWeight,
    this.labelFontColor,
    this.labelPadding,
    this.labelAlignment,
    this.labelMargin,
  }) : super(key: key);
  @override
  _Bassure_TextFieldState createState() => _Bassure_TextFieldState();
}

// ignore: camel_case_types
class _Bassure_TextFieldState extends State<Bassure_TextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.containerPadding,
      margin: widget.containerMargin,
      width: widget.containerWidth == null ? getWidth(context) : widget.containerWidth,
      height: widget.containerHeight == null ? getWidth(context) / 37 : widget.containerHeight,
      alignment: widget.containerAlignment,
      child: Column(
        children: [
          widget.label != null
              ? Container(
                  padding: widget.labelPadding,
                  margin: widget.labelMargin,
                  alignment: widget.labelAlignment,
                  child: Text(
                    widget.label,
                    style: TextStyle(
                      fontSize: widget.labelFontSize,
                      fontWeight: widget.labelFontWeight,
                      color: widget.labelFontColor,
                    ),
                  ),
                )
              : Container(),
          TextField(
            onChanged: widget.onchanged,
            maxLength: widget.maxLength,
            maxLengthEnforced: widget.maxLengthEnforcement,
            style: Theme.of(context).textTheme.bodyText2.merge(
                  TextStyle(
                    fontSize: getWidth(context) / 22,
                  ),
                ),
            inputFormatters: widget.inputFormatters,
            keyboardType: widget.keyboardType,
            textAlign: widget.textAlign,
            enabled: widget.enable,
            controller: widget.textEditingController,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              contentPadding: widget.contentPadding,
              hintText: widget.hintText,
              fillColor: Colors.black,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  new Radius.circular(
                    getWidth(context) / 37,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  new Radius.circular(
                    getWidth(context) / 37,
                  ),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(
                  new Radius.circular(
                    getWidth(context) / 37,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
