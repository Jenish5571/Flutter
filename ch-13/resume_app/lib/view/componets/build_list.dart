import 'package:flutter/material.dart';

Widget BuildListTile({
  required String images,
  required String name,
  required BuildContext context,
  required String routeName,
}) {
  Size size = MediaQuery.of(context).size;
  double w = size.width;
  double h = size.height;
  TextScaler textScaler = MediaQuery.of(context).textScaler;
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(routeName);
          },
          child: Container(
            width: w,
            height: h * 0.1,
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Color(0xff11009E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: w * 0.06,
                    foregroundImage: AssetImage(
                        "assets/images/build_option_screens/$images"),
                    backgroundColor: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textScaler.scale(23),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    ),
  );
}
/*
                Expanded(
                child: CircleAvatar(
                  radius: w * 0.08,
                  foregroundImage: AssetImage(images),
                  backgroundColor: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: textScaler.scale(15),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Icon(Icons.arrow_forward_ios),
              ),
 */
