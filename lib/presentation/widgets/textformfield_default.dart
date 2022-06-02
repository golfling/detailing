import 'package:flutter/material.dart';

class DefaultAppTextFormField extends StatelessWidget {
  const DefaultAppTextFormField({
    Key? key,
    required this.textEditingController,
    this.labelText,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.autocorrect = true,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
    this.onEditingComplete,
    this.textInputAction,
    this.border,
    this.errorText,
    this.maxLength,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final UnderlineInputBorder? border;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool autocorrect;
  final bool obscureText;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLength;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      obscureText: obscureText,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      maxLength: maxLength,
      cursorColor: Theme.of(context).primaryColorLight,
      cursorWidth: 1.5,
      validator: validator,
      controller: textEditingController,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        counterText: '',
        errorText: errorText,
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        border: border,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColorLight.withOpacity(0.5),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColorLight.withOpacity(1),
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
