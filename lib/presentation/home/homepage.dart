import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '0672084262',
                style: TextStyle(fontSize: 15, color: Colors.white),
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
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Stack(
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
                                    fontWeight: FontWeight.w300, fontSize: 20),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color(0xffe9f6f5),
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xffbce3e0),
                            child: Center(
                              child: Icon(
                                Boxicons.bx_wallet_alt,
                                color: Color(0xff26a69a),
                              ),
                            ),
                          ),
                          title: const Text('Balance'),
                          subtitle: RichText(
                              text: const TextSpan(
                                  text: 'Tsh',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: '  450,000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18))
                              ])),
                          trailing: SizedBox(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff22958b),
                              ),
                              child: TextButton(
                                child: const Text(
                                  ' + Top Up Balance',
                                  style: TextStyle(color: Color(0xffffffff)),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 160,
              left: 16,
              right: 16,
              child: Container(
                height: 170,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 180,
                      color: Colors.white,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 160,
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
