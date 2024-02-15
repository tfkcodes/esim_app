import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class PopularCards extends StatelessWidget {
  const PopularCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              3,
              (index) => Container(
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
                              offset: const Offset(0, 3))
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: const Icon(
                            Boxicons.bx_globe,
                            color: Color(
                              0xFF2BC0B4,
                            ),
                            size: 30,
                          ),
                        ),
                        RichText(
                            text: const TextSpan(
                                text: '15GB\n',
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                                children: [
                              TextSpan(
                                text: '    7 days',
                                style: TextStyle(
                                    color: Color(0xFF2BC0B4),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              )
                            ])),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Container(
                            width: 120,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF2BC0B4),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12))),
                            child: const Center(
                                child: Text(
                              '15000Tsh',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                  ))
        ],
      ),
    ));
  }
}
