import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpnesessListView extends StatefulWidget {
  const AllExpnesessListView({
    super.key,
  });

  @override
  State<AllExpnesessListView> createState() => _AllExpnesessListViewState();
}

class _AllExpnesessListViewState extends State<AllExpnesessListView> {
  final items = [
    const AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(0),
            child: AllExpensessItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(1),
            child: AllExpensessItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(2),
            child: AllExpensessItem(
              itemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
