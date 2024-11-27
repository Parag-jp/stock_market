import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class WatchList2Screen extends StatefulWidget {
  const WatchList2Screen({super.key});

  @override
  _WatchList2State createState() => _WatchList2State();
}

class _WatchList2State extends State<WatchList2Screen> {
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
                        '2/50',
                        style:
                            TextStyle(fontSize: 16, color: AppColors.greyColor),
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
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('IRCTC'),
                        Text(
                          '1381.40',
                          style: TextStyle(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Text(
                              'NSE',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 13),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Icon(
                              Icons.abc_sharp,
                              size: 12,
                              color: AppColors.greyColor,
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              '40',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 13),
                            )
                          ],
                        ),
                        const Text(
                          '0.00 (0.00%)',
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
                      children: <Widget>[
                        Text('LT'),
                        Text(
                          '905.50',
                          style: TextStyle(color: Colors.green),
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
                          'NSE',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '+54.65 (+6.42%)',
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
