import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class ExecutedScreen extends StatefulWidget {
  const ExecutedScreen({super.key});

  @override
  _ExecutedState createState() => _ExecutedState();
}

class _ExecutedState extends State<ExecutedScreen> {
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
                  children: [
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
                          hintText: 'Search eg:infy, reliance',
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.red[50],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                'SELL',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              '1000 / 1000',
                              style: TextStyle(color: AppColors.greyColor),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              '15 mins ago',
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.green[100],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                'COMPLETE',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('IDEA'),
                        Text('6.55'),
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
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              'CNC',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              'LIMIT',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const Text(
                          'LTP 6.55',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 18.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xFFE4F0F6),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                'BUY',
                                style: TextStyle(
                                    color: AppColors.blueColor, fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              '20 / 20',
                              style: TextStyle(color: AppColors.greyColor),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              '50 mins ago',
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.green[100],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                'COMPLETE',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 13),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('RELIANCE'),
                        Text('1464.40'),
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
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              'CNC',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              'LIMIT',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const Text(
                          'LTP 1464.40',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.circle,
                      color: AppColors.blueColor,
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 1,
                    ),
                    const Text(
                      'View Historical trades',
                      style:
                          TextStyle(color: AppColors.blueColor, fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
