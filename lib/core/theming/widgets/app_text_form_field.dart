import '../colors.dart';
import '../styles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final Color? backgroundColor;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final void Function(String?)? onSaved;
  final int? maxLines;
  final int? maxLength;
  final Function(String)? onFieldSubmitted;

  const AppTextFormField({
    super.key,
    this.keyboardType,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixText,
    this.prefixStyle,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.maxLines,
    this.maxLength,
    this.onSaved,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines ?? 1,
      maxLength: maxLength,
      keyboardType: keyboardType,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        // Here we combine prefixIcon and prefixText
        prefixIcon: prefixIcon != null || prefixText != null
            ? Padding(
                padding: EdgeInsets.all(10.0.r),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (prefixIcon != null) prefixIcon!,
                    if (prefixText != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          prefixText!,
                          style: prefixStyle ?? TextStyles.font14WhiteRegular,
                        ),
                      ),
                  ],
                ),
              )
            : null,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14WhiteRegular,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
