import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          40,
          1.2 * kToolbarHeight,
          40,
          20,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-5, 0),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(5, 0),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const Text(
                      // static const IconData location_on_outlined = IconData(0xf193, fontFamily: 'MaterialIcons')
                      '📍 Aix-en-provence ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/1.png',
                    ),
                    const Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTROM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Friday 16. 09.41am',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/11.png',
                          scale: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sunrise',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '5:34',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 35,
                            ),
                            Image.asset(
                              'assets/12.png',
                              scale: 8,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '5:34',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/13.png',
                          scale: 8,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temp Max',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '21°C',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'assets/14.png',
                              scale: 8,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Min',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '12°C',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
