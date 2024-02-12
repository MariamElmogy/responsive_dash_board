import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'all_expensess_item.dart';

class AllExpnesessList extends StatelessWidget {
  const AllExpnesessList({
    super.key,
  });

  static const items = [
    AllExpensessItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensessItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(itemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensessItem(itemModel: item));
        }
      }).toList(),
    );
  }
}