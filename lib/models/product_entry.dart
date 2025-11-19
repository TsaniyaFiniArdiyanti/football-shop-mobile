// lib/models/product_entry.dart

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  String name;
  int price;
  String description;
  String thumbnail;
  String category;
  String categoryDisplay;
  bool isFeatured;
  String? user;
  int? userId;

  ProductEntry({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.categoryDisplay,
    required this.isFeatured,
    this.user,
    this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"].toString(),
    name: json["name"] ?? "",
    price: json["price"] ?? 0,
    description: json["description"] ?? "",
    thumbnail: json["thumbnail"] ?? "",
    category: json["category"] ?? "",

    categoryDisplay: json["category_display"] ?? json["category"] ?? "",

    isFeatured: json["is_featured"] ?? false,

    user: json["user"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "description": description,
    "thumbnail": thumbnail,
    "category": category,
    "category_display": categoryDisplay,
    "is_featured": isFeatured,
    "user": user,
    "user_id": userId,
  };
}