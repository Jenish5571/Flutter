import 'package:festival_app/headers.dart';
import 'package:festival_app/utills/global/global.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

String? selectedImage;

class _DetailPageState extends State<DetailPage> {
  int i = 0;
  GlobalKey widgetKey = GlobalKey();
  GlobalKey colour = GlobalKey();

  @override
  void initState() {
    Globals.instance.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          data['category'],
          style: GoogleFonts.aladin(textStyle: const TextStyle(fontSize: 30)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(data['images']
                      // Globals.instance.isSelected
                      //     ? Globals.instance.selectedImage!
                      //     : Globals.instance.whiteImage!,
                      ),
                ),
              ),
              child: Text(
                data['quote'],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () =>
                              setState(() => Globals.instance.index = 0),
                          icon: Icon(
                            Icons.filter_frames_outlined,
                          ),
                          label: Text("Frames"),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.color_lens_outlined,
                          ),
                          label: Text("Colors"),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.font_download_outlined,
                          ),
                          label: Text("Fonts"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          IndexedStack(
            index: Globals.instance.index,
            children: [
              // Frame
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: allQuoteData
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            selectedImage = data['images'];

                            i = data['images'].indexOf(e);
                            setState(() {});
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.all(
                                (i == data['images'].indexOf(e)) ? 20 : 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(3, 3),
                                  blurRadius: 10,
                                  color: Colors.grey,
                                )
                              ],
                              border: Border.all(
                                color: (i == data['images'].indexOf(e))
                                    ? Colors.transparent
                                    : Colors.transparent,
                                width:
                                    (i == data['images'].indexOf(e)) ? 10 : 2,
                              ),
                              color: Colors.grey.shade200,
                              image: DecorationImage(
                                image: NetworkImage(
                                  data['images'],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
