import 'package:flutter/material.dart';
import 'package:flutter_app/app-screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    // home: Home(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Long List View'),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),
    ),
  ));
}

void showSnackBarr(BuildContext context , String itemm) {
  var snackBaar = SnackBar(
    content: Text('You can tapped $itemm'),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {
        debugPrint('Performing dummy UNDO operation');
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackBaar);
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (contextt, indexx) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[indexx]),
      subtitle: Text(('Ok')),
      trailing: Icon(Icons.cancel),
      onTap: () {
        // debugPrint('${listItems[index]} was tapped');
        showSnackBarr(contextt , listItems[indexx]);
      },
    );
  });
  return listView;
}
