import 'package:flutter/material.dart';
import 'package:kopiku/constants/constant.dart';
import 'package:kopiku/model/coffee.dart';
import 'package:kopiku/screens/detail_screen.dart';
import 'package:kopiku/widgets/favorites_widget.dart';

class ItemsWidget extends StatefulWidget {
  final selected;
  const ItemsWidget({Key? key, required this.selected}) : super(key: key);

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var selectedList;
    switch (widget.selected) {
      case 'Semua':
        {
          selectedList = coffeeList;
        }
        break;
      case 'Espresso':
        {
          selectedList = espressoList;
        }
        break;
      case 'Brewed':
        {
          selectedList = brewedList;
        }
        break;
      case 'Blended':
        {
          selectedList = blendedList;
        }
        break;
      case 'Lainnya':
        {
          selectedList = otherList;
        }
        break;
    }

    return SizedBox(
      height: 400,
      child: Scrollbar(
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: selectedList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(coffee: selectedList[index]),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 24 : 16, right: 16),
                width: 256,
                height: 384,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(selectedList[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    width: double.infinity,
                    height: 64,
                    decoration: BoxDecoration(
                      color: black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              selectedList[index].name,
                              style: bold.copyWith(
                                color: white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Rp${selectedList[index].price}',
                              style: medium.copyWith(
                                color: white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const FavoriteWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
