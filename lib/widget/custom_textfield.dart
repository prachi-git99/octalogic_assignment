import 'package:vehical/consts/consts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.label,
      this.validator,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.text,
      style: TextStyle(color: black, fontWeight: mediumFontWeight),
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2.0),
              borderRadius: BorderRadius.circular(smallBorderRadius)),
          contentPadding: EdgeInsets.symmetric(
              vertical: marginSmall, horizontal: commonPadding)),
    );
  }
}
