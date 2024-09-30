import 'package:dropdown_search/dropdown_search.dart';
import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:exam_app_itasoft/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/validators.dart';
import 'base_decoration.dart';

class BaseTextField {
  static inputTextField({
    required TextEditingController controller,
    bool isMandatory = false,
    bool isEnabled = true,
    bool obscureText = false,
    String? hint,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    FormFieldValidator<String>? validator,
    FocusNode? focusNode,
    OnFieldSubmitted? onFieldSubmitted,
    OnChanged? onChanged,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    int? minLines,
    int? maxLines,
  }) {
    return TextFormField(
      controller: controller,
      decoration: BaseDecoration.inputTextField.copyWith(
        enabled: isEnabled,
        fillColor: isEnabled ? AppColor.systemWhiteColor : AppColor.greyf5,
        hintText: hint ?? "Silahkan Isi",
      ),
      obscureText: obscureText,
      maxLines: obscureText ? 1 : maxLines,
      minLines: minLines,
      textInputAction: textInputAction ?? TextInputAction.done,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: isMandatory ? validator ?? Validators.required : null,
      focusNode: focusNode,
      maxLength: maxLength,
      onChanged: (String value) {
        if (onChanged != null) {
          onChanged(value);
        }
      },
      onFieldSubmitted: (String value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted(value);
        }
      },
    );
  }

  static inputDropDown<T>(
      {bool isMandatory = false,
      String? hint,
      bool isEnable = true,
      ItemPopUpDropDownSearchWidget<T>? itemBuilder,
      required List<T> listItem,
      required DropDownCallback<T> callback,
      T? value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DropdownSearch<T>(
          validator: Validators.dynamicRequired,
          enabled: isEnable,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: BaseDecoration.inputTextField.copyWith(
                alignLabelWithHint: true,
                enabled: isEnable,
                hintText: hint,
                fillColor:
                    isEnable ? AppColor.systemWhiteColor : AppColor.greyf5,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 0)),
          ),
          items: listItem,
          dropdownButtonProps: const DropdownButtonProps(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 20,
            ),
          ),
          popupProps: PopupProps.menu(
            itemBuilder: itemBuilder,
            constraints: const BoxConstraints(maxHeight: 100),
            menuProps: const MenuProps(backgroundColor: Colors.white),
          ),
          selectedItem: value,
          onChanged: callback,
        ),
      ],
    );
  }

  static filterDropDown<T>(
      {ItemPopUpDropDownSearchWidget<T>? itemBuilder,
      required List<T> listItem,
      required DropDownCallback<T> callback,
      T? value}) {
    return inputDropDown(
        listItem: listItem,
        callback: callback,
        value: value,
        itemBuilder: itemBuilder,
        hint: "Pilih Filter");
  }

  static searchTextField(
      {required TextEditingController controller,
      required OnChanged onChanged}) {
    return inputTextField(
      controller: controller,
      hint: "Cari Barang",
      onChanged: onChanged,
    );
  }

  static loginTextField({required TextEditingController controller}) {
    return inputTextField(
        controller: controller, hint: "Masukkan Username", isMandatory: true);
  }

  static passwordTextField({required TextEditingController controller}) {
    return inputTextField(
      controller: controller,
      hint: "Masukkan Password",
      isMandatory: true,
      obscureText: true,
    );
  }

  static buildItemDropDown(String name, bool isSelected) {
    return ListTile(
      dense: false,
      minVerticalPadding: 8,
      minLeadingWidth: 0,
      minTileHeight: 0,
      title: Text(
        name,
        style: isSelected ? AppStyle.labelBoldStyle : AppStyle.labelStyle,
      ),
    );
  }
}

typedef OnFieldSubmitted = void Function(String value);
typedef OnChanged = void Function(String value);
typedef ItemPopUpDropDownSearchWidget<T> = Widget Function(
    BuildContext context, T, bool selected);

typedef DropDownCallback<T> = void Function(T?);
