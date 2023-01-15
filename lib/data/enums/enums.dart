import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum ImageType { network, file, asset }

enum TagType {
  usualTaste,
  vibeNeeded;

  const TagType();

  MusicTag getTagByColor(ColorTest color) {
    return MusicTag.values
        .where((element) => element.tagType == this)
        .firstWhere(
          (element) => element.relatedColors.contains(color),
          orElse: () => MusicTag.funk,
        );
  }
}

enum MusicTag {
  funk(
    'funk',
    TagType.usualTaste,
    ColorTest.values,
  ),
  pop(
    'pop',
    TagType.vibeNeeded,
    ColorTest.values,
  );

  const MusicTag(this.tagCode, this.tagType, this.relatedColors);
  final String tagCode;
  final TagType tagType;
  final List<ColorTest> relatedColors;
}

enum ColorTest {
  red(
    'red',
    '사교적이고 지도력이 있는',
    '분발하기 위해 자극이 필요한',
    '미뤘던 행동을 실행할 수 있도록',
  ),
  orange(
    'orange',
    '경쾌하고 활기찬',
    '내적인 균형이 필요한',
    '충동에 흔들리지 않도록',
  ),
  yellow(
    'yellow',
    '논리적이고 분석적인',
    '현실을 인지하고 마주해야 할',
    '선택을 의심하지 않도록',
  ),
  green(
    'green',
    '신중하고 균형있는',
    '내면의 상처를 돌봐야 할',
    '관계에서 가치를 찾도록',
  ),
  blue(
    'blue',
    '침착하고 결단력있는',
    '혼자만의 시간이 필요한',
    '변화와 도전을 이룰 수 있도록',
  ),
  navy(
    'navy',
    '부드럽고 진실한',
    '나를 표현하고 침묵을 깨야 할',
    '매일의 현실에 적응하도록',
  ),
  violet(
    'violet',
    '예술적이고 신비로운',
    '스스로를 인정하고 믿어줘야 할',
    '내 능력을 사용할 수 있도록',
  ),
  purple(
    'purple',
    '친절하고 사려깊은',
    '남보다 나의 필요를 돌봐줘야 할',
    '자만에 빠지지 않도록',
  );

  const ColorTest(this.code, this.feeling, this.needs, this.advice);

  final String code;
  final String feeling;
  final String needs;
  final String advice;

  String get getSvgIconSrc => 'assets/icons/recommend/$code.svg';
}

extension ColorTestExtension on List<ColorTest> {
  List<MusicTag> getMusicTags() {
    if (isEmpty) return [];
    if (length >= 3) {
      List<MusicTag> musicTagList = List.empty(growable: true);
      musicTagList.add(TagType.usualTaste.getTagByColor(this[1]));
      musicTagList.add(TagType.vibeNeeded.getTagByColor(this[2]));
      return musicTagList;
    } else {
      return [];
    }
  }
}

enum SortType {
  @JsonValue("accuracy")
  accuracy('accuracy', '정확도순'),
  @JsonValue("recency")
  recency('recency', '최신순');

  const SortType(
    this.code,
    this.displayName,
  );
  final String code;
  final String displayName;
}

enum Collection {
  @JsonValue("news")
  news(
    'news',
    '뉴스',
    Icons.newspaper_rounded,
  ),
  @JsonValue("blog")
  blog(
    'blog',
    '블로그',
    Icons.my_library_books_rounded,
  ),
  @JsonValue("etc")
  etc(
    'etc',
    '기타',
    Icons.pending,
  ),
  @JsonValue("cafe")
  cafe('cafe', '카페', Icons.local_cafe_rounded);

  const Collection(this.code, this.displayName, this.icon);
  final String code;
  final String displayName;
  final IconData icon;

  factory Collection.getByCode(String code) {
    return Collection.values.firstWhere(
      (value) => value.code == code,
    );
  }
}
