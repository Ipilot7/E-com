class ProductsModel {
  String? sId;
  String? title;
  String? desc;
  String? img;
  List<String>? categories;
  List<String>? size;
  List<String>? color;
  int? price;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ProductsModel(
      {this.sId,
      this.title,
      this.desc,
      this.img,
      this.categories,
      this.size,
      this.color,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.iV});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    desc = json['desc'];
    img = json['img'];
    categories = json['categories'].cast<String>();
    size = json['size'].cast<String>();
    color = json['color'].cast<String>();
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['desc'] = desc;
    data['img'] = img;
    data['categories'] = categories;
    data['size'] = size;
    data['color'] = color;
    data['price'] = price;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
