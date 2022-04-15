import 'package:flutter/material.dart';

void main() {
  runApp(const ShowList());
}

class ShowList extends StatefulWidget {
  const ShowList({Key? key}) : super(key: key);

  @override
  _ShowListState createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 60,),
              Expanded(
                  child:
                  Center(
                    child: ListView.builder(
                        padding: const EdgeInsets.all(2),
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              padding: const EdgeInsets.all(3),
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                              ),
                              child: ListTile(
                                  leading: const Icon(Icons.add_shopping_cart, size: 40,),
                                  title: Text('$index-ый пункт списка'),
                                  onTap: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: Text('$index'),
                                      content: const Text('Выбран'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'OK'),
                                          child: const Text('Назад'),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            )
                    ),
                  )
              )
            ],
          ),
        ),
      );
  }
}