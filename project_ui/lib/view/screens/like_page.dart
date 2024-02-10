import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../utills/product.dart';
import 'package:project_ui/utills/routes.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePage();
}

class _LikePage extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liked Products",
          style: TextStyle(fontSize: h * 0.025, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xeffafafa),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  GlobalRoutes.home_page, (route) => false);
            },
            icon: const Icon(Icons.home_filled),
          ),
          SizedBox(
            width: w * 0.025,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: (like.isEmpty)
            ? Center(
                child: Image.network(
                  "https://t4.ftcdn.net/jpg/04/75/01/23/360_F_475012363_aNqXx8CrsoTfJP5KCf1rERd6G50K0hXw.jpg",
                ),
              )
            : Column(
                children: [
                  ...like.map(
                    (e) => Slidable(
                      endActionPane: ActionPane(
                        motion: const BehindMotion(),
                        children: [
                          SlidableAction(
                            borderRadius: BorderRadius.circular(20),
                            icon: Icons.share_outlined,
                            onPressed: (context) {},
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SlidableAction(
                            borderRadius: BorderRadius.circular(20),
                            icon: Icons.delete,
                            foregroundColor: Colors.red,
                            onPressed: (context) {
                              setState(() {
                                int index = like.indexOf(e);
                                like.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                      child: Container(
                        height: h * 0.12,
                        width: w,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(h * 0.01),
                        ),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            h * 0.01),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              e['home_image']),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.all(7),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['name'],
                                          style: TextStyle(
                                            fontSize: h * 0.021,
                                            fontWeight:
                                            FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.03,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Size - M",
                                              style: TextStyle(
                                                fontSize: h * 0.02,
                                                fontWeight:
                                                FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                              width: w * 0.099,
                                            ),
                                            Text(
                                              "color - All",
                                              style: TextStyle(
                                                fontSize: h * 0.02,
                                                fontWeight:
                                                FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.all(7),
                                    child: Column(
                                      children: [
                                        Text(
                                          "\$ ${e['price']}.00",
                                          style: TextStyle(
                                            fontSize: h * 0.02,
                                            fontWeight:
                                            FontWeight.w500,
                                            color: const Color(
                                                0xffAA14F0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
    );
  }
}
