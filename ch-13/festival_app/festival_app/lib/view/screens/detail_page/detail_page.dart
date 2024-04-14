import 'dart:io';
import 'dart:ui' as ui;
import 'package:cyclop/cyclop.dart';
import 'package:festival_app/headers.dart';
import 'package:festival_app/utills/global/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

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

  Future<File> getFileFromWidget() async {
    RenderRepaintBoundary boundary =
        widgetKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(
      pixelRatio: 15,
    );
    ByteData? data = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    Uint8List list = data!.buffer.asUint8List();

    Directory directory = await getTemporaryDirectory();
    File file = await File(
            "${directory.path}/QA${DateTime.now().millisecondsSinceEpoch}.png")
        .create();
    file.writeAsBytesSync(list);

    return file;
  }

  @override
  void initState() {
    Globals.instance.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return EyeDrop(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Image
              Expanded(
                child: RepaintBoundary(
                  key: widgetKey,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      image: DecorationImage(
                        image: NetworkImage(
                          (selectedImage != null)
                              ? selectedImage!
                              : data['images'][0],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            String text = data['quote'][0];
                            return AlertDialog(
                              title: const Text("Edit Quote"),
                              content: TextFormField(
                                initialValue: data['quote'][0],
                                maxLines: 3,
                                onChanged: (val) => text = val,
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    data['quote'][0] = text;
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Save"),
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel"),
                                ),
                              ],
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      onPanUpdate: (DragUpdateDetails dragUpdateDetails) =>
                          setState(() => Globals.instance.offSet +=
                              dragUpdateDetails.delta),
                      child: Transform.translate(
                        offset: Globals.instance.offSet,
                        child: Center(
                          child: Text(
                            data['quote'][0],
                            textAlign: Globals.instance.quoteTextAlignment,
                            style: TextStyle(
                              fontSize: 25,
                              color: Globals.instance.quoteTextColor,
                              letterSpacing:
                                  Globals.instance.quotelettringSpacing,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    TextButton.icon(
                      onPressed: () =>
                          setState(() => Globals.instance.indexOf = 0),
                      label: const Text(
                        "Frame",
                        style: TextStyle(color: Colors.black54),
                      ),
                      icon: const Icon(
                        Icons.filter_frames_outlined,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    TextButton.icon(
                      onPressed: () =>
                          setState(() => Globals.instance.indexOf = 1),
                      label: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black54),
                      ),
                      icon: const Icon(
                        Icons.text_increase,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    TextButton.icon(
                      onPressed: () =>
                          setState(() => Globals.instance.indexOf = 2),
                      label: const Text(
                        "Colour",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      icon: const Icon(
                        Icons.color_lens_outlined,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: IndexedStack(
                  index: Globals.instance.indexOf,
                  children: [
                    // Frame
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: allQuoteData
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  selectedImage;
                                  i = data['images'][0].indexOf(e);
                                  setState(() {});
                                },
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  margin: EdgeInsets.all(
                                      (i == data['images'][0].indexOf(e))
                                          ? 20
                                          : 10),
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
                                      color: (i == data['images'][0].indexOf(e))
                                          ? Colors.transparent
                                          : Colors.transparent,
                                      width: (i == data['images'][0].indexOf(e))
                                          ? 10
                                          : 2,
                                    ),
                                    color: Colors.grey.shade200,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        data['images'][0],
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    ListView(
                      children: [
                        // FontSize
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                Globals.instance.size += 3;
                                setState(() {});
                              },
                              icon: const Icon(
                                CupertinoIcons.plus_app,
                              ),
                            ),
                            const Text(
                              "Font Size: ",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Globals.instance.size -= 3;
                                setState(() {});
                              },
                              icon: const Icon(CupertinoIcons.minus_rectangle),
                            ),
                          ],
                        ),
                        // FontAlignment
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                Globals.instance.quoteTextAlignment =
                                    TextAlign.left;
                                setState(() {});
                              },
                              icon: const Icon(Icons.format_align_left),
                            ),
                            IconButton(
                              onPressed: () {
                                Globals.instance.quoteTextAlignment =
                                    TextAlign.center;
                                setState(() {});
                              },
                              icon: const Icon(Icons.format_align_center),
                            ),
                            IconButton(
                              onPressed: () {
                                Globals.instance.quoteTextAlignment =
                                    TextAlign.right;
                                setState(() {});
                              },
                              icon: const Icon(Icons.format_align_right),
                            ),
                          ],
                        ),
                        // FontLetterSpacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                Globals.instance.quotelettringSpacing += 1;
                                setState(() {});
                              },
                              icon: const Icon(CupertinoIcons.plus_app),
                            ),
                            const Text(
                              "Letter Spacing",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Globals.instance.quotelettringSpacing -= 1;
                                setState(() {});
                              },
                              icon: const Icon(CupertinoIcons.minus_rectangle),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Colour_Picker

                    Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 5,
                            children: Globals.instance.allColors
                                .map(
                                  (e) => e == Colors.transparent
                                      ?
                                      // Colour_Picker
                                      Container(
                                          alignment: Alignment.center,
                                          child: ColorButton(
                                            key: colour,
                                            config: const ColorPickerConfig(
                                                enableEyePicker: true),
                                            size: 32,
                                            color:
                                                Globals.instance.quoteTextColor,
                                            onColorChanged: (value) => setState(
                                              () {
                                                Globals.instance
                                                    .quoteTextColor = value;
                                              },
                                            ),
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            Globals.instance.quoteTextColor = e;
                                            setState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: e,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(60),
                                              ),
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 3,
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
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blue.shade300,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Options"),
                  content: const Text("Select any one option."),
                  actions: [
                    // Share
                    ElevatedButton.icon(
                      onPressed: () async {
                        ShareExtend.share(
                          (await getFileFromWidget()).path,
                          "image",
                        );
                      },
                      icon: const Icon(Icons.share),
                      label: const Text("Share"),
                    ),
                    // Save
                    ElevatedButton.icon(
                      onPressed: () async {
                        ImageGallerySaver.saveFile(
                                (await getFileFromWidget()).path,
                                isReturnPathOfIOS: true)
                            .then(
                          (value) {
                            Navigator.pop(context);
                            return ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Saved on Gallery !!"),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.save),
                      label: const Text("Save"),
                    ),
                  ],
                );
              },
            );
          },
          label: const Text("Share"),
          icon: const Icon(Icons.edit),
        ),
      ),
    );
  }
}
