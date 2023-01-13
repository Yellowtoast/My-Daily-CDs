import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum ImageType { network, file, asset }

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
  news('news', '뉴스', Icons.newspaper_rounded),
  @JsonValue("blog")
  blog('blog', '블로그', Icons.my_library_books_rounded),
  @JsonValue("etc")
  etc('etc', '기타', Icons.pending),
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
