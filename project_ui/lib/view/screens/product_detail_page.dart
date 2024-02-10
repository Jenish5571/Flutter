import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_ui/utills/product.dart';
import 'package:project_ui/utills/routes.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: h * 0.03,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
            Navigator.of(context).pushNamed(GlobalRoutes.like_page);
            if(!like.contains(data)){
              like.add(data);
            }
          }, icon: Icon(Icons.favorite_border_outlined)),
          SizedBox(
            width: w * 0.03,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: h * 0.33,
                  autoPlayInterval: Duration(milliseconds: 1500),
                  enableInfiniteScroll: true,
                  scrollPhysics: BouncingScrollPhysics(),
                  enlargeCenterPage: true,
                ),
                items: [
                  ...data['all_images']
                      .map(
                        (e) => Container(
                      width: w * 0.8,
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(e),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ],
              ),
              Expanded(
                flex: 0,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['name'],
                            style: TextStyle(
                              fontSize: h * 0.035,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.002,
                          ),
                          Text(
                            data['brand'],
                            style: TextStyle(
                              fontSize: h * 0.028,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: h * 0.002,
                          ),
                          Text(
                            "\$ ${data['price']}.00",
                            style: TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffAA14F0),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.002,
                          ),
                          RatingBarIndicator(
                            rating: double.parse(data['rating'].toString()),
                            itemSize: h * 0.03,
                            itemCount: 5,
                            direction: Axis.horizontal,
                            textDirection: TextDirection.ltr,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star_outlined,
                              color: Color(0xffFFB001),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.028,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['description'],
                      style: TextStyle(
                        fontSize: h * 0.025,
                        color: Color(0xff7A7A7A),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Text(
                      "Shipping & Returns",
                      style: TextStyle(
                        fontSize: h * 0.028,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Free standard shipping and free 60-day returns",
                      style: TextStyle(
                        fontSize: h * 0.022,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Ink(
                  decoration: BoxDecoration(
                    color:  Colors.black,
                    borderRadius: BorderRadius.circular(h * 0.035),
                  ),
                  child: InkWell(
                    splashColor: Colors.grey,
                    borderRadius: BorderRadius.circular(h * 0.035),
                    onTap: () {
                      if (!addToCart.contains(data)) {
                        addToCart.add(data);
                      }
                    },
                    child: Container(
                      height: h * 0.065,
                      width: w * 4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff8e6cef),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: w * 0.06,
                          ),
                          Text(
                            "\$ ${data['price']}.00",
                            style: TextStyle(
                              fontSize: h * 0.028,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.3,
                          ),
                          Text(
                            "Add To Bag",
                            style: TextStyle(
                                fontSize: h * 0.028,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
                 Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...data['all_images']
                          .map(
                            (e) => Container(
                              height: h * 0.33,
                              width: w * 0.8,
                              margin: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(e),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),

                        CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          height: h * 0.33,
                          autoPlayInterval: Duration(milliseconds: 1500),
                          enableInfiniteScroll: true,
                          scrollPhysics: BouncingScrollPhysics(),
                          enlargeCenterPage: true,
                        ),
                        items: [
                          ...data['all_images']
                              .map(
                                (e) => Container(
                                  width: w * 0.8,
                                  margin: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ],
                      ),

 */
/*
              Ink(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: InkWell(
                  splashColor: Colors.grey,
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: h * 0.065,
                    width: w * 4,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff8e6cef),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: w * 0.06,
                        ),
                        Text(
                          "\$ ${data['price']}.00",
                          style: TextStyle(
                            fontSize: h * 0.028,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: w * 0.3,
                        ),


                        Text(
                          "Add To Bag",
                          style: TextStyle(
                            fontSize: h * 0.028,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
*/
/*
      CarouselSlider(
      items: [
              Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.25),
                  image: DecorationImage(
                    image: NetworkImage(data['all_images']),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
        options: CarouselOptions(
          height: h * 0.6,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          //autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          //viewportFraction: 0.5,
        ),
      ),
 */
/*
                 Ink(
                decoration: BoxDecoration(
                  color: const Color(0xffAA14F0),
                  borderRadius: BorderRadius.circular(h * 0.035),
                ),
                child: InkWell(
                  splashColor: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(h * 0.035),
                  onTap: () {
                    if (!addToCart.contains(data)) {
                      addToCart.add(data);
                    }
                    log(" ------ Add To Cart ------");
                    log("${addToCart}");
                    log("${addToCart.length}");
                    log("---------------------------");
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w,
                    alignment: Alignment.center,
                    child: const Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
 */
