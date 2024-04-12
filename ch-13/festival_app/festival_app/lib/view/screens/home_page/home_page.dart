import 'dart:ui';
import 'package:festival_app/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://finduslost.com/wp-content/uploads/2020/02/Holi-Festival-India-Find-Us-Lost-01544.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 15,
              sigmaY: 15,
            ),
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Festival",
                      style: GoogleFonts.dancingScript(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Upcoming Festival",
                  style: GoogleFonts.aboreto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    enableInfiniteScroll: true,
                    scrollPhysics: const BouncingScrollPhysics(),
                    enlargeCenterPage: true,
                  ),
                  items: [
                    ...upcomingImage
                        .map(
                          (e) => Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Festival List",
                  style: GoogleFonts.aboreto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 480,
                    scrollDirection: Axis.vertical,
                    enableInfiniteScroll: true,
                    scrollPhysics: const BouncingScrollPhysics(),
                    enlargeCenterPage: true,
                  ),
                  items: [
                    ...allQuoteData
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                AppRoutes.instance.listPage,
                                arguments: e,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(12),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(e['img']),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    alignment: Alignment.bottomLeft,
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      e['category'],
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [
                                          0.5,
                                          1,
                                        ],
                                        colors: [
                                          Colors.transparent,
                                          Colors.black,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      // image: DecorationImage(
                                      //   image: NetworkImage(e['img']),
                                      //   fit: BoxFit.fill,
                                      // ),
                                    ),
                                    alignment: Alignment.bottomLeft,
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      e['category'],
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
