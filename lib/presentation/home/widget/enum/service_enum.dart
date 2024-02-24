import 'package:flutter/material.dart';

// Enum to represent different types of services
enum ServiceType {
  luku,
  airtime,
  tv,
  government,
  education,
  airline,
  water,
  qr,
  insurance,
  games,
  football
}

// Model class to represent a service
class ServiceModel {
  final IconData iconData;
  final ServiceType name;
  final bool isQuick;

  ServiceModel({
    required this.iconData,
    required this.name,
    required this.isQuick,
  });
}
