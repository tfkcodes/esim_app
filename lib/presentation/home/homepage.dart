import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:esim_app/presentation/home/widget/plans_list.dart';
import 'package:esim_app/presentation/home/widget/quick_stats_card.dart';
import 'package:esim_app/presentation/home/widget/quick_balance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff22958b),
        title: Row(
          children: [
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF2BC0B4),
              ),
              child: const Center(
                child: Text(
                  'E-sim',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const Text(
                    '0672084262',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Boxicons.bxs_bell,
                color: Colors.white,
              )),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXZhdGFyfGVufDB8fDB8fHww"),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xff22958b),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: const TextSpan(
                                    text: 'Hi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: '  Jerry, ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20))
                                ])),
                            const Text(
                              'this is your recent usage',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const QuickBalanceCard(),
                      ],
                    ),
                  ),
                ),
              ),
              const QuickStatsCard(),
              const PlanList(),
            ],
          ),
        ),
      ),
    );
  }
}
