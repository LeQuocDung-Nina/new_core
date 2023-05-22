import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart_hive.g.dart';


@HiveType(typeId: 1)
class ItemCartHive {
  ItemCartHive({
    required this.id,
    this.namevi,
    this.descvi,
    this.regular_price,
    this.sale_price,
    this.discount,
    this.id_list,
    this.photo,
    this.quantity = 1,
    this.isFavourite = false,
    this.colorTemp = "",
    this.sizeTemp = "",
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String? namevi;

  @HiveField(2)
  final String? descvi;

  @HiveField(3)
  final String? regular_price;

  @HiveField(4)
  final String? sale_price;

  @HiveField(5)
  final String? discount;

  @HiveField(6)
  final String? id_list;

  @HiveField(7)
  final String? photo;

  @HiveField(8)
  final int quantity;

  @HiveField(9)
  final bool isFavourite;

  @HiveField(10)
  final String colorTemp;

  @HiveField(11)
  final String sizeTemp;
}

