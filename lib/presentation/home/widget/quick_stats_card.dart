import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class QuickStatsCard extends StatelessWidget {
  const QuickStatsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 160,
        left: 16,
        right: 16,
        child: Container(
          height: 190,
          width: MediaQuery.of(context).size.width * 0.9,

          ///add brul shadows
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffbce3e0),
                            ),
                            child: TextButton(
                              child: const Text(
                                'In use',
                                style: TextStyle(color: Color(0xffffffff)),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF2BC0B4),
                              ),
                              child: TextButton(
                                child: const Text(
                                  'Internet',
                                  style: TextStyle(color: Color(0xffffffff)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color(0xffbce3e0),
                              child: Center(
                                child: Icon(
                                  Boxicons.bx_wallet_alt,
                                  color: Color(0xff26a69a),
                                ),
                              ),
                            ),
                            title: Text(
                              'Data 5 GB',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            subtitle: Text(
                              'Weekly Plan',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text('Active until'),
                          Text(
                            'Feb 2, 2023',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 160,
                  child: PieChart(
                    dataMap: const {
                      'Data': 5,
                      'Remain': 3.5,
                    },
                    chartType: ChartType.ring,
                    chartRadius: MediaQuery.of(context).size.width * 0.3,
                    centerWidget: const Padding(
                      padding: EdgeInsets.only(top: 38.0),
                      child: Column(
                        children: [
                          Text(
                            '3.5 GB',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            '/5 GB',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    legendOptions: const LegendOptions(showLegends: false),
                    chartValuesOptions:
                        const ChartValuesOptions(showChartValues: false),
                    colorList: const [Color(0xff22958b), Color(0xffe9f6f5)],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
