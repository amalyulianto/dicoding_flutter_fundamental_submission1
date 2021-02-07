import 'package:flutter/material.dart';
import 'package:local_restaurant/const.dart';

class RestaurantCard extends StatelessWidget {
  // final String imageUrl;
  final String img;
  final String name;
  final String city;
  final String description;
  final double rating;

  const RestaurantCard(
      {@required this.img,
      @required this.name,
      @required this.city,
      @required this.description,
      @required this.rating});
  // RestaurantCard(String img, String name, double rating, String city, String description);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: MediaQuery.of(context).size.width - (28 * 2),
          decoration: BoxDecoration(
              border: Border.all(color: kText),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                  height: 200,
                  width: 125,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                // width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: interTitle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        city,
                        style: interText.copyWith(color: kTextTitle),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        // width: double.infinity,
                        child: Text(
                          description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              interText2.copyWith(color: kText, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/Icon_star_solid.png',
                            width: 22,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '$rating',
                            style: interTitle.copyWith(
                                color: kColorYellow, fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
