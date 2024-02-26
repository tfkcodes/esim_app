import 'data/plans_data.dart';
import 'data/service_data.dart';
import 'package:flutter/material.dart';
import 'components/plan_component.dart';
import 'package:esim_app/presentation/home/widget/screens/service.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: popularCardsData
                      .map(
                        (card) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PopularCard(
                            serviceType: card.serviceType,
                            cost: card.cost,
                            volume: card.volume,
                            validity: card.validity,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quick Services',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: serviceModel
                      .map(
                        (card) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QuickServiceCards(
                              serviceType: card.name,
                              icon: card.iconData,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => ServicePage(
                                            serviceType: card.name)));
                              },
                            )),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
