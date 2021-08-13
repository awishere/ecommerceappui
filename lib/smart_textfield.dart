import 'package:ecommerceappui/constants.dart';
import 'package:flutter/material.dart';

smartTextField(
    {@required String title,
    TextEditingController controller,
    String hintText,
    Icon icon,
    Image img,
    Function onTap,
    bool obscureText = false,
    bool readOnly = false,
    bool isPassword = false,
    bool isForm = true,
    AutovalidateMode autovalidateMode}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontFamily: 'Muli-SemiBold'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
      ),
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        readOnly: readOnly,
        style: TextStyle(
            color: kPrimaryColor, fontFamily: 'Muli-SemiBold', fontSize: 16),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter given field.';
          }
          if (isPassword == true) {
            if (value.length < 6) {
              return isPassword == true ? 'Enter more than 6 characters' : '';
            }
          }
        },
        decoration: InputDecoration(
          suffixIcon: img,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10),
      )
    ],
  );
}
