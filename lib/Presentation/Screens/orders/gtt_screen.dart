import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class GttScreen extends StatefulWidget {
  const GttScreen({super.key});

  @override
  _GTTState createState() => _GTTState();
}

class _GTTState extends State<GttScreen> {
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            color: AppColors.whiteColor,
            height: SizeConfig.blockSizeVertical! * 5,
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical! * 2,
            left: SizeConfig.blockSizeHorizontal! * 4,
            child: Container(
              decoration:
                  BoxDecoration(color: AppColors.whiteColor, boxShadow: [
                BoxShadow(
                  blurRadius: 13.0,
                  color: AppColors.blackColor.withOpacity(.03),
                  offset: Offset(1.0, 7.0),
                )
              ]),
              width: SizeConfig.blockSizeHorizontal! * 92,
              height: SizeConfig.blockSizeVertical! * 6,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Icon(
                        Icons.search,
                        color: AppColors.greyColor,
                        size: 22,
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: TextField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: AppColors.whiteColor,
                            hintText: 'Search eg: infy,reliance'),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Icon(
                        Icons.settings,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical! * 35,
                ),
                Center(
                  child: Text(
                    'No GTTs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1,
                ),
                Center(
                  child: Text(
                    'Place a GTT from watchlist',
                    style: TextStyle(color: AppColors.greyColor, fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
