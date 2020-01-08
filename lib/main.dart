import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:crossroads_group/containers/home/home.dart';
import 'package:crossroads_group/redux/store/store.dart';

void main() async {

  var store = await createGlobalStore();

  runApp(
   StoreProvider(
        store: store,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(),
        ),
      ),
  );
}