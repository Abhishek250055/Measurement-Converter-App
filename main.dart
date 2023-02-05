import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var input;
  var from;
  var to;
  var result;
  var measuremap = {'centimeter': 0, 'meter': 1, 'milimeret': 2};
  var formula = {
    'centimeret': [1, .01, 100],
    'meter': [100, 1, 1000],
    'milimeret': [.01, .001, 1]
  };
  var measures = ['centimeter', 'meter', 'milimeter'];

  void convert(input, from, to) {
    var multiplier;
    multiplier = formula[from]![measuremap[to]!];
    setState(() {
      result = input * multiplier;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Unit Converter")),
      body: Container(
        // ignore: sort_child_properties_last
        child: Center(
            child: Column(
          children: [
            SizedBox(height: 20),
            Text("Enter the value to Conversion"),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(hintText: 'Enter vales'),
              onChanged: (value) {
                input = double.tryParse(value);
              },
            ),
            SizedBox(height: 20),
            Text("From"),
            DropdownButton(
                items: measures.map((x) {
                  return (DropdownMenuItem(child: Text(x), value: x));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    from = value;
                  });
                },
                value: from),
            SizedBox(height: 20),
            Text("To"),
            DropdownButton(
                items: measures.map((x) {
                  return (DropdownMenuItem(child: Text(x), value: x));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    to = value;
                  });
                },
                value: to),
            ElevatedButton(
                onPressed: (() {
                  if (from.isEmpty || to.isEmpty || input == Null) {
                    return;
                  } else {
                    convert(input, from, to);
                  }
                }),
                child: Text('Converd')),
            SizedBox(height: 20),
            Text("Convert value is = ${result}"),
          ],
        )),
      ),
    ));
  }
}
