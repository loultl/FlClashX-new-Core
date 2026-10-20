import 'package:flutter/foundation.dart';

@immutable
class SmartWeight {
  const SmartWeight({
    required this.name,
    required this.rank,
    required this.weight,
  });

  final String name;
  final String rank;
  final double weight;

  factory SmartWeight.fromJson(Map<String, Object?> json) {
    return SmartWeight(
      name: json['name'] as String,
      rank: json['rank'] as String,
      weight: (json['weight'] as num).toDouble(),
    );
  }
}
