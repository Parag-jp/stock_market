import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class WatchList3Screen extends StatefulWidget {
  const WatchList3Screen({super.key});

  @override
  _WatchList3State createState() => _WatchList3State();
}

class _WatchList3State extends State<WatchList3Screen> {
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
                  offset: const Offset(1.0, 7.0),
                )
              ]),
              width: SizeConfig.blockSizeHorizontal! * 92,
              height: SizeConfig.blockSizeVertical! * 6,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Flexible(
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: AppColors.whiteColor,
                          hintText: 'Search & add',
                        ),
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: Text(
                        '0/50',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: Icon(
                        Icons.settings,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: SizeConfig.blockSizeVertical! * 35,
              ),
              const Center(
                child: Text(
                  'Nothing here',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 1,
              ),
              const Center(
                child: Text(
                  'Use the search bar to add',
                  style: TextStyle(color: AppColors.greyColor, fontSize: 15),
                ),
              ),
              const Center(
                child: Text(
                  'Instruments to your watchlist',
                  style: TextStyle(color: AppColors.greyColor, fontSize: 15),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
