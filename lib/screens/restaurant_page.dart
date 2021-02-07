import 'package:flutter/material.dart';
import 'package:local_restaurant/const.dart';
import 'package:local_restaurant/model/restaurant.dart';
import 'package:local_restaurant/screens/error_screen.dart';

class RestaurantPage extends StatelessWidget {
  static const routeName = '/restaurant_page';
  final Restaurant data;

  const RestaurantPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      backgroundColor: kColorBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: kColorBlue,
              child: Image.network(
                data.pictureId,
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/icons/btn_back.png',
                          width: 40,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/btn_wishlist.png',
                        width: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          data.name,
                          style: interTitle.copyWith(fontSize: 32),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/Icon_star_solid.png',
                              color: kButtonColor,
                              width: 24,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '${data.rating}',
                              style: interText2.copyWith(
                                  color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          data.description,
                          style:
                              interText2.copyWith(fontSize: 16, color: kText),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE8F8F5)),
                                  child:
                                      Image.asset('assets/icons/pizza (1).png'),
                                  width: 75,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Makanan',
                                  style: interText2.copyWith(
                                      fontSize: 18, color: kText),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE8F8F5)),
                                  child: Image.asset(
                                      'assets/icons/coffee (1).png'),
                                  width: 75,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Minuman',
                                  style: interText2.copyWith(
                                      fontSize: 18, color: kText),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffE8F8F5)),
                                  child: Image.asset('assets/icons/wifi.png'),
                                  width: 75,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Wifi',
                                  style: interText2.copyWith(
                                      fontSize: 18, color: kText),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width - 56,
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, ErrorScreen.routeName);
                              },
                              child: Text(
                                'Pesan Sekarang',
                                style: interText2.copyWith(
                                    fontSize: 18, color: Colors.white),
                              ),
                              color: kButtonColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
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
