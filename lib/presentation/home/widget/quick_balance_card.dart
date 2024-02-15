import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class QuickBalanceCard extends StatelessWidget {
  const QuickBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  ' + Top Up ',
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
