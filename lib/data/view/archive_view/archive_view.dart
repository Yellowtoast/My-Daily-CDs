import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/core/theme/size.dart';
import 'package:daily_cd_player/helpers/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CDs\nArchived',
                  style: Theme.of(context).typography.englishLike.headline1,
                ),
                Image.asset(
                  'assets/images/cd_case.png',
                  height: 95,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                      color: MyColors.white,
                      width: myWidth(context),
                      height: 70,
                      padding: const EdgeInsets.only(
                        left: 18,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/cd.png',
                            height: 43,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: MyColors.grey300
                                                  .withOpacity(0.8)))),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'dittasdff',
                                            softWrap: false,
                                            style: Theme.of(context)
                                                .typography
                                                .black
                                                .headline2,
                                            overflow: TextOverflow.fade,
                                          ),
                                          Text(
                                            'new Jeans',
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(height: 1.4),
                                          ),
                                        ],
                                      )),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          color: Colors.transparent,
                                          padding: EdgeInsets.only(
                                              left: 12,
                                              top: 10,
                                              bottom: 15,
                                              right: 3),
                                          child: Image.asset(
                                            'assets/images/headphone.png',
                                            height: 29,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 9, top: 10, bottom: 10),
                                        child: Image.asset(
                                          'assets/icons/archive/delete.png',
                                          height: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
          )
        ],
      )),
    );
  }
}
