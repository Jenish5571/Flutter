import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryViewer(),
    ),
  );
}

class GalleryViewer extends StatefulWidget {
  const GalleryViewer({super.key});

  @override
  State<GalleryViewer> createState() => _GalleryViewerState();
}

class _GalleryViewerState extends State<GalleryViewer> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
    ];

    List networkImages = [
      "https://images.pexels.com/photos/433989/pexels-photo-433989.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "https://cdn.fstoppers.com/styles/full/s3/media/2020/12/21/nando-vertical-horizontal-05.jpg",
      "https://i2.wp.com/photornia.com/wp-content/uploads/2019/06/DSC_3106.jpg?fit=618%2C927&ssl=1",
      "https://wallpapers.com/images/hd/nature-vertical-myagv1mtcmumgv8q.jpg",
      "https://img.freepik.com/free-photo/vertical-shot-beautiful-river-with-strong-current-greenery-around_181624-2270.jpg",
    ];

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GALLERY VIEWER",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.apps_rounded,
              color: Colors.white,
              size: h * 0.035,
            ),
          ),
          SizedBox(
            width: w * 0.025,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...images
                  .map(
                    (e) => Container(
                      height: h * 0.35,
                      width: w,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
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
      backgroundColor: Colors.grey,
    );
  }
}
