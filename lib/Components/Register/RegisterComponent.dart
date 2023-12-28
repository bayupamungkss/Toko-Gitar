import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/Register/RegisterForm.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class RegistrasiComponent extends StatefulWidget {
  @override
  _RegistrasiComponent createState() => _RegistrasiComponent();
}

class _RegistrasiComponent extends State<RegistrasiComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        // Use Expanded to make sure the Text takes the available width
                        child: Text(
                          "Registrasi !",
                          textAlign:
                              TextAlign.center, // Align the text to the center
                          style: mTitleStyle.copyWith(
                              fontSize: 24), // Increase font size
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SignUpform()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
