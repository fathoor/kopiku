import 'package:flutter/material.dart';
import 'package:kopiku/constants/constant.dart';
import 'package:kopiku/screens/home_screen.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  static List<String> categories = [
    'Espresso',
    'Brewed',
    'Blended',
    'Others',
  ];

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              CategoriesWidget.categories.length,
              (index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  margin:
                      EdgeInsets.only(left: index == 0 ? 24 : 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? cream : white,
                  ),
                  child: Center(
                    child: Text(
                      CategoriesWidget.categories[index],
                      style: medium.copyWith(
                          color: index == 0 ? black : grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
