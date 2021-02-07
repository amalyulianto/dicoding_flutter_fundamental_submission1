import 'package:flutter/material.dart';
import 'package:local_restaurant/const.dart';
import 'package:local_restaurant/model/restaurant.dart';
import 'package:local_restaurant/screens/restaurant_page.dart';
import 'package:local_restaurant/widgets/restaurant_card.dart';

class ListPage extends StatelessWidget {
  static const routeName = '/list_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBlue,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: kColorBlue,
                  child: Center(
                    child: Text(
                      'Mau makan di mana?',
                      style:
                          titleText.copyWith(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FutureBuilder<String>(
                              future: DefaultAssetBundle.of(context)
                                  .loadString('assets/local_restaurant.json'),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  final restaurants =
                                      welcomeFromJson(snapshot.data);
                                  int index = 0;
                                  return Column(
                                      children:
                                          restaurants.restaurants.map((e) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                        top: index == 1 ? 0 : 30,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, RestaurantPage.routeName,
                                              arguments: e);
                                        },
                                        child: RestaurantCard(
                                            city: e.city,
                                            img: e.pictureId,
                                            name: e.name,
                                            description: e.description,
                                            rating: e.rating),
                                      ),
                                    );
                                  }).toList());
                                } else {
                                  return Container(
                                    height: MediaQuery.of(context).size.height,
                                    child: Center(
                                        child: CircularProgressIndicator()),
                                  );
                                }
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
