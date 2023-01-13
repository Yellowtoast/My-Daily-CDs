class PaginationFilter {
  int page;
  int listSize;

  PaginationFilter({required this.page, required this.listSize, e});

  @override
  String toString() => 'PaginationFilter(page: $page, limit: $listSize)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PaginationFilter && o.page == page && o.listSize == listSize;
  }

  @override
  int get hashCode => page.hashCode ^ listSize.hashCode;
}
