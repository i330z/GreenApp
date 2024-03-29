import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHome(),
));

var greenColor = Color(0xff32a05f);
var darkGreenColor = Color(0xff279152);
var productImage =
    'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only( bottomLeft: Radius.circular(108.0)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8.0,),
                        Icon(Icons.arrow_back),
                        SizedBox(height: 8.0),
                        Container(
                          width: 300,
                          child: Text(
                              'Fiddle Leaf Fig Topiary',
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        Text(
                            '10 Nursery Pot',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(height: 12.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.0),
                              child: Text(
                                '\$',
                                style: TextStyle(
                                  color: greenColor,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text('85',
                              style: TextStyle(
                                color: greenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 52.0,
                              ),
                            )

                          ],
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(
                                  builder: (context) => DetailsScreen()
                                ));
                              },
                              backgroundColor: greenColor,
                              child: Icon(Icons.shopping_cart),
                            ),
                            Container(
                              width: 200.0,
                              height: 204.0,
                              child: Image.network(
                                  productImage,
                                fit: BoxFit.scaleDown,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 28.0),
                      ],
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5.0),
                      Text('Planting',style: TextStyle(color: Colors.white)),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 80.0,
                            width: MediaQuery.of(context).size.width / 2 - 50,
                            decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22.0),
                                  topRight: Radius.circular(22.0),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '250',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 8.0,),
                                    Text(
                                      'ml',
                                      style: TextStyle(color: Colors.white54),
                                    )
                                  ],
                                ),
                                Text('water',
                                  style: TextStyle(color: Colors.white54, fontSize: 16.0),
                                )
                              ],
                            ),

                          ),
                          Container(
                            height: 80.0,
                            width: MediaQuery.of(context).size.width / 2 - 50,
                            decoration: BoxDecoration(
                                color: darkGreenColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22.0),
                                  topRight: Radius.circular(22.0),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '80',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 8.0,),
                                    Text(
                                      'ml',
                                      style: TextStyle(color: Colors.white54),
                                    )
                                  ],
                                ),
                                Text('coke',
                                  style: TextStyle(color: Colors.white54, fontSize: 16.0),
                                )
                              ],
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Greenary nyc',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.1,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 200.0,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                itemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(height: 22.0),
                itemRow(Icons.ac_unit, 'Humidity', 'up to 82%'),
                SizedBox(height: 22.0),
                itemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
              ],
            ),
          ),
          SizedBox(height: 12.0,),
          Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    bottomLeft: Radius.circular(32.0),
                  )
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size:24.0,),
                  SizedBox(width: 40.0),
                  Text(
                    'Delivery Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.only(left:14.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: darkGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    bottomLeft: Radius.circular(32.0),
                  )
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size:24.0,),
                  SizedBox(width: 40.0),
                  Text(
                    'Return Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 80.0,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    color: Color(0xff2c2731),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        'add to cart',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}

itemRow(icon, name, title){
  return Row(
    children: <Widget>[
      Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 8.0),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
      Spacer(),
      Text(title, style: TextStyle(color: Colors.white54, fontSize: 16.0))
    ],
  );
}

