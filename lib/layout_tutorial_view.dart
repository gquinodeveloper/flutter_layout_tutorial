import 'package:flutter/material.dart';

class LayoutTutorialView extends StatelessWidget {
  const LayoutTutorialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image.network("http://c.files.bbci.co.uk/E02E/production/_102809375_machu.jpg"),
          Image.asset("assets/mp.jpeg"),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20.0,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Machu picchu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                    Text(
                      "Maravilla  del mundo",
                      style: TextStyle(color: Colors.black54, fontSize: 16.0),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.star_rate, color: Colors.red),
                const Text("41"),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _icons(Icons.call, "CALL"),
                _icons(Icons.near_me, "ROUTE"),
                _icons(Icons.share, "SHARE"),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Text(
              "Next, diagram each row. The first row, called the Title section, has 3 children: a column of text, a star icon, and a number. Its first child, the column, contains 2 lines of text. That first column takes a lot of space, so it must be wrapped in an Expanded widget.",
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  Widget _icons(IconData icon, String title) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 10.0),
        Text(
          title,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
