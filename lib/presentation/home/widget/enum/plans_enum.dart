enum PlanServiceType {
  sms,
  data,
  minutes,
  smsAndMinutes,
  smsMinutesData,
}

class PopularCardModel {
  final PlanServiceType serviceType;
  final double cost;
  final String volume;
  final String validity;

  PopularCardModel({
    required this.serviceType,
    required this.cost,
    required this.volume,
    required this.validity,
  });
}
