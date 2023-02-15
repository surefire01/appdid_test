class Categories {
  Categories({
    required this.category,
  });
  late final List<Category> category;

  Categories.fromJson(Map<String, dynamic> json) {
    category =
        List.from(json['categories']).map((e) => Category.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['categories'] = category.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Category {
  Category({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });
  late final String idCategory;
  late final String strCategory;
  late final String strCategoryThumb;
  late final String strCategoryDescription;

  Category.fromJson(Map<String, dynamic> json) {
    idCategory = json['idCategory'];
    strCategory = json['strCategory'];
    strCategoryThumb = json['strCategoryThumb'];
    strCategoryDescription = json['strCategoryDescription'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idCategory'] = idCategory;
    _data['strCategory'] = strCategory;
    _data['strCategoryThumb'] = strCategoryThumb;
    _data['strCategoryDescription'] = strCategoryDescription;
    return _data;
  }
}
