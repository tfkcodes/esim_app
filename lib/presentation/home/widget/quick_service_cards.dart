import 'enum/service_enum.dart';
import 'package:flutter/material.dart';

class QuickServiceCards extends StatefulWidget {
  final ServiceType serviceType;
  final IconData icon;
  final VoidCallback onTap;
  const QuickServiceCards({
    super.key,
    required this.serviceType,
    required this.onTap,
    required this.icon,
  });

  @override
  State<QuickServiceCards> createState() => _QuickServiceCardsState();
}

class _QuickServiceCardsState extends State<QuickServiceCards> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 90,
      child: Column(
        children: [
          InkWell(
            onTap: widget.onTap,
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffe9f6f5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(0, 0.5))
                  ]),
              child: Center(
                child: Icon(
                  widget.icon,
                  color: Color(
                    0xFF2BC0B4,
                  ),
                  size: 40,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.serviceType.toString().split('.').last.capitalize())
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    if (this.isEmpty) {
      return '';
    }
    return this[0].toUpperCase() + this.substring(1).toLowerCase();
  }
}
