import 'package:flutter/material.dart';
import 'package:kopiku/constants/constant.dart';
import 'package:kopiku/model/coffee.dart';
import 'package:kopiku/screens/home_screen.dart';

class CategoriesWidget extends StatefulWidget {
  final selected;
  const CategoriesWidget({Key? key, required this.selected}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Scrollbar(
        controller: ScrollController(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // setState(() => selected = categoryList[index]);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen(selected: categoryList[index]),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                margin: const EdgeInsets.only(left: 24, bottom: 4),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.selected == categoryList[index] ? cream : white,
                  boxShadow: widget.selected == categoryList[index]
                      ? [
                          BoxShadow(
                            color: black.withOpacity(0.2),
                            offset: const Offset(0, 0),
                            blurRadius: 16,
                          )
                        ]
                      : null,
                ),
                child: Text(
                  categoryList[index],
                  style: medium.copyWith(
                    color:
                        widget.selected == categoryList[index] ? black : grey,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
