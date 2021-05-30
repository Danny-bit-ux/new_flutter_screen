import 'package:flutter/material.dart';
import 'package:flutter_app_traiding/constraints.dart';
import 'package:flutter_app_traiding/data.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Explore',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 44.0,
                          fontFamily: 'Avenir'),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'Solar System',
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 24.0,
                                color: Color(0x7cdbf1ff),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      underline: SizedBox(),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 32),
                height: 500,
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 15,
                      space: 8,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 100,
                            ),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Text(
                                      planets[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 44.0,
                                        fontWeight: FontWeight.bold,
                                        color: primaryTextColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'Solar Item',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: primaryTextColor,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 24.0),
                                    ),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Know more',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: secondaryTextColor,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18.0),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: secondaryTextColor,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(planets[index].iconImage)
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu_book_rounded),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
