// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemCartHiveAdapter extends TypeAdapter<ItemCartHive> {
  @override
  final int typeId = 1;

  @override
  ItemCartHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemCartHive(
      id: fields[0] as String,
      namevi: fields[1] as String?,
      descvi: fields[2] as String?,
      regular_price: fields[3] as String?,
      sale_price: fields[4] as String?,
      discount: fields[5] as String?,
      id_list: fields[6] as String?,
      photo: fields[7] as String?,
      quantity: fields[8] as int,
      isFavourite: fields[9] as bool,
      colorTemp: fields[10] as String,
      sizeTemp: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ItemCartHive obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.namevi)
      ..writeByte(2)
      ..write(obj.descvi)
      ..writeByte(3)
      ..write(obj.regular_price)
      ..writeByte(4)
      ..write(obj.sale_price)
      ..writeByte(5)
      ..write(obj.discount)
      ..writeByte(6)
      ..write(obj.id_list)
      ..writeByte(7)
      ..write(obj.photo)
      ..writeByte(8)
      ..write(obj.quantity)
      ..writeByte(9)
      ..write(obj.isFavourite)
      ..writeByte(10)
      ..write(obj.colorTemp)
      ..writeByte(11)
      ..write(obj.sizeTemp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemCartHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
