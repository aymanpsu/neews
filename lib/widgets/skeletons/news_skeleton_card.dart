import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsSkeletonCardItem extends StatelessWidget {
  const NewsSkeletonCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 344.0,
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              enabled: false,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Row(
                    children: [
                      // full card
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: 320,
                        height: double.infinity,
                        // items of the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // image widget
                            Flexible(
                              flex: 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Colors.white,
                                      ),
                                      width: double.infinity,
                                      height: 14.0,
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          4.0,
                                        ),
                                        color: Colors.white,
                                      ),
                                      width: 172,
                                      height: 14.0,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 20.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4.0,
                                                  ),
                                                  color: Colors.white,
                                                ),
                                                width: 106.0,
                                                height: 10.0,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4.0,
                                                  ),
                                                  color: Colors.white,
                                                ),
                                                width: 68.0,
                                                height: 10.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25.0,
                      )
                    ],
                  );
                },
                itemCount: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
