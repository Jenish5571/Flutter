import 'package:festival_app/headers.dart';
import 'package:festival_app/utills/global/global.dart';

Widget quoteTextSize({required Function onChanged}) {
  return Center(
    child: Slider(
      min: 10,
      max: 50,
      value: Globals.instance.size,
      onChanged: onChanged(),
    ),
  );
}
