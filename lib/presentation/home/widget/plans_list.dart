import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:esim_app/presentation/home/widget/popular_cards.dart';
import 'package:esim_app/presentation/home/widget/quick_service_cards.dart';

class PlanList extends StatelessWidget {
  const PlanList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 360,
        left: 16,
        right: 16,
        child: Container(
          height: 490,
          width: MediaQuery.of(context).size.width * 0.9,

          ///add brul shadows
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Data Plan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'view all',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
              PopularCards(),
              QuickServiceCards()
            ],
          ),
        ));
  }
}
