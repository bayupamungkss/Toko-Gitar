import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Screens/Admin/Crud/InputGitarScreen.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class HomeAdminScreens extends StatelessWidget {

  static var routeName = '/home_admin_screens';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
        title: const Text(
          "GIBag",
         style: TextStyle(color: mTitleColor, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        leading: const Icon(
        Icons.home, 
        color: mTitleColor,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, InputGitarScreens.routeName);
            },
            child: Row(children: const [
              Icon(Icons.add, color: mTitleColor),
               Text("Input Data", style: TextStyle(color: mTitleColor, fontWeight: FontWeight.bold,),
               )
            ]),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kColorRedSlow,
        child: Icon(
        Icons.logout, 
        color: Colors.white,
        ),
      ),
    );
  }
}