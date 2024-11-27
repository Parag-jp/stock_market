import 'package:flutter/material.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_zerodha_clone_app/AppUtils/sizeconfig.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              centerTitle: false,
              elevation: 0,
              backgroundColor: AppColors.whiteColor,
              title: const Text(
                'Account',
                style: TextStyle(fontSize: 27, color: AppColors.blackColor),
              ),
              actions: const [
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 45,
                  color: AppColors.blackColor,
                )
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Parag Burhade',
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          body: SingleChildScrollView(
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
                    height: SizeConfig.blockSizeVertical! * 12,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    'OP0000',
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 21),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1,
                              ),
                              const Expanded(
                                child: Text(
                                  'paragburhade12@gmail.com',
                                  style: TextStyle(
                                      color: AppColors.greyColor, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blueColor,
                                ),
                                width: 60,
                                height: 60,
                                child: const Center(
                                  child: Text(
                                    'CR',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: AppColors.blueColor,
                                    ),
                                  ),
                                ),
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
                      height: SizeConfig.blockSizeVertical! * 15,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 14.0,
                        ),
                        child: ListTile(
                          title: Text('Funds'),
                          trailing: Text(
                            '\u20B9',
                            style: TextStyle(
                                fontSize: 25, color: AppColors.greyColor),
                          ),
                        )),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 14.0),
                        child: ListTile(
                            title: Text('Profile'),
                            trailing: Icon(
                              Icons.person_outline,
                              color: AppColors.greyColor,
                              size: 25,
                            ))),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 14.0,
                      ),
                      child: ListTile(
                        title: Text('Settings'),
                        trailing: Icon(
                          Icons.settings,
                          color: AppColors.greyColor,
                          size: 25,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      child: ListTile(
                        title: Text('Support'),
                        trailing: Icon(
                          Icons.info,
                          color: AppColors.greyColor,
                          size: 25,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      child: ListTile(
                        title: Text('Invite Friends'),
                        trailing: Icon(
                          Icons.add,
                          color: AppColors.greyColor,
                          size: 25,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      child: ListTile(
                        title: Text('User Manual'),
                        trailing: Icon(
                          Icons.circle,
                          color: AppColors.greyColor,
                          size: 25,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      child: ListTile(
                        title: Text('Logout'),
                        trailing: Icon(
                          Icons.logout,
                          color: AppColors.greyColor,
                          size: 25,
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 14.0),
                      child: ListTile(
                        title: Text(
                          'Version 3.0.21 Build 109',
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
