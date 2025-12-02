import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_new_view.dart';

class NodeItem extends StatelessWidget {
  const NodeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNewView();
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 26, bottom: 26, left: 16),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffFFCC80),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    'Flutter Tips',
                    style: TextStyle(fontSize: 27, color: Colors.black),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Build your carrer with tharwat ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(.5),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'May 21,2022',
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
