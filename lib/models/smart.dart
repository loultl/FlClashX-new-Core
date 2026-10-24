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
    final name = json['name'] ?? json['Name'];
    final rank = json['rank'] ?? json['Rank'];
    final weight = json['weight'] ?? json['Weight'];
    return SmartWeight(
      name: name as String,
      rank: rank as String,
      weight: (weight as num).toDouble(),
    );
  }
}
