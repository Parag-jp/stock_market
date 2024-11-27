import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class HoldingsScreen extends StatefulWidget {
  const HoldingsScreen({super.key});

  @override
  _HoldingsState createState() => _HoldingsState();
}

class _HoldingsState extends State<HoldingsScreen> {
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
              height: SizeConfig.blockSizeVertical! * 16,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                          AppStrings.invested,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 15,
                          ),
                        )),
                        Expanded(
                          child: Text(
                            AppStrings.current,
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 0.5,
                    ),
                    const Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          '60,765.32',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 18),
                        )),
                        Expanded(
                            child: Text(
                          '82,326.12',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 18),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Divider(
                      height: 20,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    const Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          AppStrings.pAndL,
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 18,
                          ),
                        )),
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '+21,560.80',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18),
                            ),
                            Text(
                              ' +13.54 %',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
                        )),
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
                height: SizeConfig.blockSizeVertical! * 18,
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
                          AppStrings.search,
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
                            color: AppColors.blueColor,
                            fontSize: 14,
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
                            const Text(
                              AppStrings.thousand,
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              AppStrings.quantity,
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            const Icon(
                              Icons.theater_comedy,
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            const Text(
                              'Avg.',
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            const Text(
                              ' 6.00',
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                          ],
                        ),
                        const Row(
                          children: <Widget>[
                            Text(
                              '+10.00 %',
                              style: TextStyle(color: Colors.green),
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
                        Text('+550.00'),
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
                              'Invested',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              '6000.00',
                              style: TextStyle(
                                  color: AppColors.blackColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'LTP ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              '6550.00 ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                            Text(
                              '(+20.38%)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
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
                              '37',
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 1,
                            ),
                            const Text(
                              ' Qty.',
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            const Icon(
                              Icons.threed_rotation,
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            const Text(
                              'Avg.',
                              style: TextStyle(color: AppColors.greyColor),
                            ),
                            const Text(
                              ' 1464.40',
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                          ],
                        ),
                        const Row(
                          children: <Widget>[
                            Text(
                              '0.00 %',
                              style: TextStyle(),
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
                      children: [
                        Text('RELIANCE'),
                        Text('+19,650.00'),
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
                              'Invested',
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            const Text(
                              '54732.32',
                              style: TextStyle(
                                  color: AppColors.blackColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'LTP ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                            ),
                            Text(
                              '54,732.32 ',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                            Text(
                              '(0.00%)',
                              style: TextStyle(
                                fontSize: 14,
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
                      Icons.circle,
                      color: AppColors.blueColor,
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 1,
                    ),
                    const Text(
                      'View Complete Portfolio',
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
