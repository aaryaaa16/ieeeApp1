import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:untitled2/data.dart';
import 'package:untitled2/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ui extends StatefulWidget {
  const ui({Key? key}) : super(key: key);

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 200),
          Container(
            height: 500,
            child: Swiper(
              itemCount: images.length,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    color: Colors.white24,
                    activeColor: Colors.white,
                    size: 6.0,
                    activeSize: 9.0
                ),
              ),
              viewportFraction: 0.7,
              scale: 0.3,
              itemBuilder: (context, index) {
                return Container(
                  child: GlassmorphicContainer(
                    width: 350,
                    height: 750,
                    borderRadius: 20,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.15),
                          Color(0xFFFFFFFF).withOpacity(0.25)
                        ],
                        stops: [
                          0.1,
                          1,
                        ]
                    ),
                    borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.0),
                          Color(0xFFFFFFFF).withOpacity(0.0)
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 18),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            images[index]['image'],
                            height: 300,
                            width: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            images[index]['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Oxanium',
                              fontSize: 30,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        Text(
                          "App Team",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Oxanium',
                            fontSize: 20,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () async{
                                  const url = 'https://www.youtube.com';
                                  final uri = Uri.parse(url);
                                  if (await canLaunchUrl(uri)) {
                                    await launchUrl(uri);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                icon: Icon(
                                  MyFlutterApp.linkedin,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                            ),
                            IconButton(
                              onPressed: () async{
                                const url = 'https://www.youtube.com';
                                final uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              icon: Icon(
                                MyFlutterApp.github,
                                color: Colors.blue,
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                );
              },
            )
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}