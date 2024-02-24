import '../enum/service_enum.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

final List<ServiceModel> serviceModel = [
  ServiceModel(
      iconData: Boxicons.bx_book, name: ServiceType.education, isQuick: true),
  ServiceModel(
      iconData: Boxicons.bx_bulb, name: ServiceType.luku, isQuick: true),
  ServiceModel(
      iconData: Boxicons.bxs_plane_take_off,
      name: ServiceType.airline,
      isQuick: false),
  ServiceModel(
      iconData: Boxicons.bx_phone_call,
      name: ServiceType.airtime,
      isQuick: true),
  ServiceModel(
      iconData: Boxicons.bxs_droplet_half,
      name: ServiceType.water,
      isQuick: true)
];
