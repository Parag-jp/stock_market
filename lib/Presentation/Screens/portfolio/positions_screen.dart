import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PositionsScreen extends StatefulWidget {
  const PositionsScreen({super.key});

  @override
  _PositionsState createState() => _PositionsState();
}

class _PositionsState extends State<PositionsScreen> {
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
              height: SizeConfig.blockSizeVertical! * 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppStrings.totalPL,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 0.5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppStrings.eightThousand,
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: SizeConfig.blockSizeVertical! * 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.search,
                          color: AppColors.blueColor,
                          size: 14,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                        const Text(
                          AppStrings.searchOnly,
                          style: TextStyle(
                            color: AppColors.blueColor,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.settings,
                          color: AppColors.blueColor,
                          size: 14,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                        const Text(
                          AppStrings.filter,
                          style: TextStyle(
                              color: AppColors.blueColor, fontSize: 14),
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
                            const Text(
                              AppStrings.fourty,
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              AppStrings.quantity,
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.greyColor,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                AppStrings.nrml,
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 13),
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
                        Text(
                          AppStrings.idea,
                        ),
                        Text(
                          AppStrings.fourThousand,
                          style: TextStyle(color: Colors.green),
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
                              '',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              AppStrings.hundred,
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: <Widget>[
                            Text(
                              AppStrings.ltp,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              AppStrings.fourty,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
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
                            const Text(
                              AppStrings.hundred,
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              AppStrings.quantity,
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColors.greyColor,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: const Text(
                                AppStrings.nrml,
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 13),
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
                        Text(
                          AppStrings.reliance,
                        ),
                        Text(
                          AppStrings.fourThousand,
                          style: TextStyle(color: Colors.green),
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
                              AppStrings.nfo,
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              AppStrings.hundred,
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              AppStrings.hundred,
                              style: TextStyle(
                                  color: AppColors.blackColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const Row(
                          children: <Widget>[
                            Text(
                              AppStrings.ltp,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              AppStrings.fourty,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
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
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      FontAwesomeIcons.circle,
                      color: AppColors.blueColor,
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 1,
                    ),
                    const Text(
                      AppStrings.viewReport,
                      style: TextStyle(
                        color: AppColors.blueColor,
                        fontSize: 15,
                      ),
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
