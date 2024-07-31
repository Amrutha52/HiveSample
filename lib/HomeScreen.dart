import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Homescreen extends StatefulWidget
{
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
{
  var box = Hive.box('testBox'); // Boxint reference eduthu or object create cheythu.

  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: "Title",
                filled: true,
                fillColor: Colors.grey.shade300,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: (){
                //box.put("name", titleController.text);
                box.put("note", {
                  "title" : "my title",
                  "desc" : "note des",
                  "date" : "note date",
                  "color" : 5
                });
                setState(() {

                });
              },
              child: Text("Save", )),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: (){
                // var data = box.get("note");
                // print('data' + data);
              },
              child: Text("Get", )),
          SizedBox(height: 20),
          //Text(box.get("name") ?? "empty")
          Text(box.get("note")["title"]),
          Text(box.get("note")["desc"]),
          Text(box.get("note")["date"]),
          Text(box.get("note")["color"].toString())
        ],
      ),
    );
  }
}
