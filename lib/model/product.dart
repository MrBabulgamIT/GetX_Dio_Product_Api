import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  int? id;
  String? name;
  String? brand;
  String? price;
  String? image_link;
  String? description;
  String? product_type;

  Product(this.price, this.id, this.name, this.brand, this.image_link,
      this.description, this.product_type);

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
