import 'package:flutter/material.dart';
import '../helpers/app_genric_styles.dart';

class SearchForNews extends StatelessWidget {
  const SearchForNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const TextField(
          style: TextStyle(
            color:  Colors.white
          ),
          autofocus: true,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            hintText: 'Search for',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: AppGenricStyles.defultPadding,
          child: const Text('Search data'),
        ),
      ),
    );
  }
}
