import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: instagamUi(),
    ),
  );
}

class instagamUi extends StatefulWidget {
  const instagamUi({super.key});

  @override
  State<instagamUi> createState() => _instagamUiState();
}

class _instagamUiState extends State<instagamUi> {
  List<Map<String, dynamic>> instagamUi = [
    {
      'name': "jenish_nakarani1",
      'time': "25 new messages * 4",
      'image' : "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
    },
    {
      'name': "sahil_vatarapara",
      'time': "4 new messages * 1h",
      'image' : "https://www.indiafilings.com/learn/wp-content/uploads/2023/03/Can-a-single-person-own-a-firm-in-India.jpg",
    },
    {
      'name': "vivekhirapara007",
      'time': "4 new messages * 1h",
      'image' : "https://img.freepik.com/free-photo/portrait-handsome-man-with-dark-hairstyle-bristle-toothy-smile-dressed-white-sweatshirt-feels-very-glad-poses-indoor-pleased-european-guy-being-good-mood-smiles-positively-emotions-concept_273609-61405.jpg",
    },
    {
      'name': "preet_chandpara",
      'time': "25 new messages * 4",
      'image' : "https://st2.depositphotos.com/2931363/6569/i/450/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg",
    },
    {
      'name': "vaidiBadrakhiya1",
      'time': "4 new messages * 4",
      'image' : "https://avatars.githubusercontent.com/u/132265675?v=4",
    },
    {
      'name': "jenish_nakarani1",
      'time': "25 new messages * 4",
      'image' : "https://avatars.githubusercontent.com/u/133774622?v=4",
    },
    {
      'name': "sahil_vatarapara",
      'time': "4 new messages * 1h",
      'image' : "https://www.indiafilings.com/learn/wp-content/uploads/2023/03/Can-a-single-person-own-a-firm-in-India.jpg",
    },
    {
      'name': "vivekhirapara007",
      'time': "4 new messages * 1h",
      'image' : "https://img.freepik.com/free-photo/portrait-handsome-man-with-dark-hairstyle-bristle-toothy-smile-dressed-white-sweatshirt-feels-very-glad-poses-indoor-pleased-european-guy-being-good-mood-smiles-positively-emotions-concept_273609-61405.jpg",
    },
    {
      'name': "preet_chandpara",
      'time': "25 new messages * 4",
      'image' : "https://st2.depositphotos.com/2931363/6569/i/450/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg",
    },
    {
      'name': "vaidiBadrakhiya1",
      'time': "4 new messages * 4",
      'image' : "https://avatars.githubusercontent.com/u/132265675?v=4",
    },
    {
      'name': "jenish_nakarani1",
      'time': "25 new messages * 4",
      'image' : "https://avatars.githubusercontent.com/u/133774622?v=4",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
        title: const Text(
          "jenish5571",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.video_call_outlined,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 45,
                margin: EdgeInsets.only(
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment(-0.9, 0),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 35,
                        backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                      ),
                      Text(
                        "Leave a note",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 5),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 5),
                    child: Text(
                      "Requests",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ...instagamUi.map(
                (e) => Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(e['image']),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${e['name']}",
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${e['time']}",
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 130,
                      ),
                      const Text(
                        "*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      const Expanded(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
