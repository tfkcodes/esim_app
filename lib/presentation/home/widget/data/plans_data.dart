import '../enum/plans_enum.dart';

final List<PopularCardModel> popularCardsData = [
  PopularCardModel(
    serviceType: PlanServiceType.data,
    cost: 15000,
    volume: '15 GB',
    validity: '7 days',
  ),
  PopularCardModel(
    serviceType: PlanServiceType.smsAndMinutes,
    cost: 10000,
    volume: '500 sms',
    validity: '30 days',
  ),
  PopularCardModel(
    serviceType: PlanServiceType.minutes,
    cost: 20000,
    volume: '300 min',
    validity: '15 days',
  ),
];
