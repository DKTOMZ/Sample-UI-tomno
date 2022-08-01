import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_screen_app/reusable_widgets.dart';
import 'dart:math' as math;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wallet',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Text(
                    'Mobile Team',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Icon(
                    CupertinoIcons.chevron_up_chevron_down,
                    color: Colors.grey,
                    size: 18,
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 105,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ReusableCard(
                    icon: const Icon(
                      Icons.qr_code,
                      size: 30,
                      color: Colors.white,
                    ),
                    subtitle: 'Your address',
                    cardColor: Colors.blue.shade500,
                    textColor: Colors.white,
                  ),
                  const ReusableCard(
                      icon: Icon(
                        Icons.person_outline_rounded,
                        size: 30,
                      ),
                      subtitle: 'Aliases'),
                  const ReusableCard(
                      icon: Icon(
                        Icons.toggle_on,
                        size: 30,
                        color: Colors.blue,
                      ),
                      subtitle: 'Balance'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tokens',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 20,
                    height: 5,
                    color: Colors.blue.shade500,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Leasing',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: const [
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.search, color: Colors.grey)),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Search',
                                  style: TextStyle(color: Colors.grey))),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(Icons.swap_vert),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(5),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: CardTileIcon(
                backgroundColor: Colors.white,
                widget: Transform.rotate(
                  angle: math.pi / 4,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    color: Colors.blue.shade500,
                  ),
                ),
                posicon: const Icon(
                  Icons.check,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              title: Row(
                children: [
                  const Text(
                    'Waves ',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.blue.shade500,
                    size: 14,
                  )
                ],
              ),
              subtitle: const Text(
                '5.0054',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(5),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: const CardTileIcon(
                backgroundColor: Colors.black45,
                widget: Text(
                  'P',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                posicon: Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
              ),
              title: Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Pigeon ',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        '/My Token',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: const Text(
                '1 444.04556321',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(5),
            child: const ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: CardTileIcon(
                backgroundColor: Colors.green,
                widget: Text(
                  "\$",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                posicon: Icon(
                  Icons.check,
                  size: 14,
                ),
              ),
              title: Text(
                'US Dollar',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              subtitle: Text(
                '199.24',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Text(
              'Hidden Tokens (2)',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(CupertinoIcons.chevron_down),
          ),
          const ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Text(
              'Suspicious Tokens (15)',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(CupertinoIcons.chevron_down),
          )
        ],
      ),
    );
  }
}
