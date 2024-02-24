import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:esim_app/presentation/home/widget/enum/plans_enum.dart';

class PopularCard extends StatelessWidget {
  final PlanServiceType serviceType;
  final double cost;
  final String volume;
  final String validity;

  const PopularCard({
    super.key,
    required this.serviceType,
    required this.cost,
    required this.volume,
    required this.validity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Icon(
              _getIcon(),
              color: const Color(0xFF2BC0B4),
              size: 30,
            ),
          ),
          RichText(
            text: TextSpan(
              text: '${volume}\n',
              style: const TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: '    $validity',
                  style: const TextStyle(
                    color: Color(0xFF2BC0B4),
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Container(
              width: 120,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF2BC0B4),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  '${cost}Tsh',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon() {
    switch (serviceType) {
      case PlanServiceType.sms:
        return Boxicons.bx_message_square;
      case PlanServiceType.data:
        return Boxicons.bx_globe;
      case PlanServiceType.minutes:
        return Boxicons.bx_timer;
      case PlanServiceType.smsAndMinutes:
        return Boxicons.bx_message_x;
      case PlanServiceType.smsMinutesData:
        return Boxicons.bx_message_x;
    }
  }
}
