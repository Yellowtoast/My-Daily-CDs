import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:daily_cd_player/data/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theme/size.dart';

class TodayTestView extends StatelessWidget {
  const TodayTestView({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Select 3 colors\ncatch your eyes\nin orders',
                  style: Theme.of(context).typography.englishLike.headline1,
                ),
                Icon(
                  Icons.arrow_circle_right_sharp,
                  size: 48,
                  color: MyColors.black,
                )
              ],
            ),
          ),
          Container(
            width: myWidth(context),
            padding: EdgeInsets.only(top: 13, left: 16, bottom: 13),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 38),
            decoration: BoxDecoration(border: Border.all()),
            child: Text('눈에 띄는 색 3가지를 순서대로 골라주세요 '),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ColorTest.values.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                  childAspectRatio: 1 / 1, //item 의 가로 1, 세로 2 의 비율
                  mainAxisSpacing: 15, //수평 Padding
                  crossAxisSpacing: 15, //수직 Padding
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.transparent,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(ColorTest.values[index].getSvgIconSrc),
                        Offstage(
                          offstage: false,
                          child: Container(
                            alignment: Alignment.center,
                            width: 23,
                            decoration: BoxDecoration(
                                color: MyColors.white,
                                shape: BoxShape.circle,
                                border: Border.all()),
                            child: Text('1'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
