import 'package:book_purchase_app/home/book_page_body.dart';
import 'package:book_purchase_app/utils/colors.dart';
import 'package:book_purchase_app/widgets/big_text.dart';
import 'package:book_purchase_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainBookPage extends StatefulWidget {
  const MainBookPage({Key? key}) : super(key: key);

  @override
  State<MainBookPage> createState() => _MainBookPageState();
}

class _MainBookPageState extends State<MainBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "NIT Calicut",
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "SMSE",
                          color: Colors.black,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        BookPageBody(),
      ],
    ));
  }
}
