import 'package:flutter/material.dart';
import '../../utills/product.dart';
import '../../utills/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "Men";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E-Commerce",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: h * 0.029,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                GlobalRoutes.cart_page,
              );
            },
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          Icon(
            Icons.favorite,
          ),
          SizedBox(
            width: w * 0.025,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.055,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(w * 0.50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w * 0.015,
                      ),
                      Icon(
                        Icons.search,
                        size: h * 0.03,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: w * 0.015,
                      ),
                      Text(
                        "Searching",
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffcacaca),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.5,
                      ),
                      Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: h * 0.03,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Category.map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          cat = e;
                        });
                      },
                      child: Container(
                        height: h * 0.055,
                        width: w * 0.3,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: (cat == e)
                                ? Colors.deepPurpleAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(h * 0.1),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.5,
                              )
                            ]),
                        alignment: Alignment.center,
                        child: Text(
                          e,
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: (cat == e) ? Colors.white : Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...Product.map(
                      (e) => (cat == e['category'])
                          ? GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    GlobalRoutes.detail_page,
                                    arguments: e);
                              },
                              child: Container(
                                height: h * 0.35,
                                width: w * 0.6,
                                margin: const EdgeInsets.all(12),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.favorite_border_outlined,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Container(
                                      height: h * 0.20,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: NetworkImage(e['image']),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['name'],
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      "\$ ${e['price']}",
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        color: Color(0xff8c8c8c),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                    ).toList()
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Category",
                    style: TextStyle(
                      fontSize: h * 0.028,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: w * 0.027,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      3,
                      (index) => Container(
                        height: h * 0.35,
                        width: w * 0.6,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(h * 0.01),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Container(
                              height: h * 0.20,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Product[index + 5]['image']),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "${Product[index + 5]['name']}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "\$ ${Product[index + 5]['price']}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                color: Color(0xff8c8c8c),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
