import 'package:flutter/material.dart';

import '../../../../core/assets/assets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              SizedBox(height: 40),
              Container(
                height: 100,
                child: Image.asset(
                  kPassport,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 100,
                height: 30,
                child: Container(
                  child: Center(child: Text('Buyer')),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Semedo Dapaah',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18,
                    ),
              ),
              Text(
                'Head Cook /  Marina, Lagos',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                    ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(kFb, scale: 3.2),
                    Image.asset(kTwit, scale: 3.2),
                    Image.asset(kIg, scale: 3.2),
                    Image.asset(kLinkdn, scale: 3.2),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    height: 400,
                    width: 350,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: const [
                                    Text('Commentaries'),
                                    Text('11'),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: const [
                                    Text('Orders'),
                                    Text('86'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(height: 3),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('About'),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 250,
                                  child: Text(
                                      'Hello, we want you to work with us in developing a great meal profile. We use this platform to improve our services and give feedback to our customers'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(height: 3),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Contact'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(kPhone, scale: 3.2),
                                    SizedBox(width: 10),
                                    Text('+0 123 4456 7890'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(kMail, scale: 3.2),
                                    SizedBox(width: 10),
                                    Text('hello@mytruq.com'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          )
        ]),
      ),
    );
  }
}
