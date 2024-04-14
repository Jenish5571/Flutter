import 'package:festival_app/headers.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(data['category']),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ...data['quote']
              .map(
                (e) => Card(
                  color: Colors.primaries[++i % 18].shade100,
                  child: ListTile(
                    title: TextButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        AppRoutes.instance.detailPage,
                        arguments: data,
                      ),
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        // maxLines: 1,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
