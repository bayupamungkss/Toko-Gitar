
// import 'package:flutter/material.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class FormInputGitar extends StatefulWidget {
  @override
  _FormInputGitar createState() => _FormInputGitar();
}

class _FormInputGitar extends State<FormInputGitar> {
  TextEditingController txtNamaGitar = TextEditingController(),
      txtTipeGitar = TextEditingController(),
      txtHargaGitar = TextEditingController(),
      txtMerekGitar = TextEditingController();

  FocusNode focusNode = new FocusNode();
  File? image;
  Response? response;
  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNamaGitar(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTipeGitar(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildHargaGitar(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMerekGitar(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButtonCustomeColor(
            color: kColorBlue,
            text: "Pilih Gambar Gitar",
            press: () {},
          ),
           SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "SUBMIT",
            press: () {},
          ), 
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  TextFormField buildNamaGitar() {
    return TextFormField(
      controller: txtNamaGitar,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Nama Gitar',
          hintText: 'Masukan Nama Gitar',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.add_chart_sharp)),
    );
  }

    TextFormField buildTipeGitar() {
      return TextFormField(
        controller: txtTipeGitar,
        keyboardType: TextInputType.text,
        style: mTitleStyle,
        decoration: InputDecoration(
            labelText: 'Tipe Gitar',
            hintText: 'Masukan Tipe Gitar',
            labelStyle: TextStyle(
                color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(Icons.add_chart_sharp)),
      );
    }

    TextFormField buildHargaGitar() {
      return TextFormField(
        controller: txtHargaGitar,
        keyboardType: TextInputType.number,
        style: mTitleStyle,
        decoration: InputDecoration(
            labelText: 'Harga Gitar',
            hintText: 'Masukan Harga Gitar',
            labelStyle: TextStyle(
                color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(Icons.add_chart_sharp)),
      );
   }

   TextFormField buildMerekGitar() {
      return TextFormField(
        controller: txtMerekGitar,
        keyboardType: TextInputType.text,
        style: mTitleStyle,
        decoration: InputDecoration(
            labelText: 'Merek Gitar',
            hintText: 'Masukan Merek Gitar',
            labelStyle: TextStyle(
                color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(Icons.add_chart_sharp)),
      );
   }

   Future pilihGambar() async {
    try {
      final image = await ImagePicker.pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(()=> this.image = imageTemp);
    } catch (e) {}
   }   
  }