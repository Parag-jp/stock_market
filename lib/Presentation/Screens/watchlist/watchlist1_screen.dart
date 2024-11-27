import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class WatchList1Screen extends StatefulWidget {
  const WatchList1Screen({super.key});

  @override
  _WatchList1State createState() => _WatchList1State();
}

class _WatchList1State extends State<WatchList1Screen> {
  late TextEditingController? textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

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
                          hintText: AppStrings.search,
                        ),
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: Text(
                        AppStrings.twoBy50,
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
            children: <Widget>[
              Container(
                height: SizeConfig.blockSizeVertical! * 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.infy,
                        ),
                        Text(
                          AppStrings.seven,
                          style: TextStyle(
                            color: AppColors.greenColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.nse,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          AppStrings.one,
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.cipla),
                        Text(
                          AppStrings.six,
                          style: TextStyle(
                            color: AppColors.redColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppStrings.nse,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          AppStrings.minus,
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}
