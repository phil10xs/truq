import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/assets/assets.dart';
import '../notifier/data.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  State<ExplorerScreen> createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    var storeNote = Provider.of<MyNotifier>(
      context,
      listen: false,
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Divider(height: 5, thickness: 2.0),
              SizedBox(height: 20),
              Consumer<MyNotifier>(
                builder: (context, store, child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 34,
                              child: Row(
                                children: [
                                  for (var i = 0;
                                      i < store.foodCate.length;
                                      i++) ...[
                                    SizedBox(
                                      width: 85,
                                      child: Row(
                                        children: [
                                          i == store.currentFoodCate
                                              ? InkWell(
                                                  onTap: () {
                                                    store.setcurrentFoodCate =
                                                        i;
                                                    storeNote.getData();
                                                  },
                                                  child: Container(
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                              store.foodCate[i],
                                                              textAlign:
                                                                  TextAlign
                                                                      .center),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : InkWell(
                                                  onTap: () {
                                                    store.setcurrentFoodCate =
                                                        i;
                                                    storeNote.getData();
                                                  },
                                                  child: Container(
                                                    width: 80,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(store.foodCate[i],
                                                            textAlign: TextAlign
                                                                .center),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                          Container(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      GridView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        children: [
                          for (var i = 0; i < store.data.length; i++)
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(),
                                  child: SvgPicture.network(
                                    store.data[i]['title'],
                                    semanticsLabel: 'A shark?!',
                                    placeholderBuilder:
                                        (BuildContext context) => Container(
                                            padding: const EdgeInsets.all(10.0),
                                            child:
                                                const CircularProgressIndicator()),
                                  ),
                                ),
                                Text(store.data[i]['title']),
                              ],
                            )
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
