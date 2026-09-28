import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

int selectedIndex = -1;

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    AllExpensesItemModel(
      text: 'Balance',
      date: 'April 2022',
      price: 20129.0,
      imagePath: AppImages.imagesBalance,
    ),
    AllExpensesItemModel(
      text: 'Income',
      date: 'April 2022',
      price: 20129.0,
      imagePath: AppImages.imagesIncome,
    ),
    AllExpensesItemModel(
      text: 'Expenses',
      date: 'April 2022',
      price: 20129,
      imagePath: AppImages.imagesExpenses,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),
        /*
            items.asMap().entries.map((e) 
            . map return only one widget 
            .expand return more than one

          */
        children:
            items.asMap().entries.expand((e) {
              int index = e.key;
              var item = e.value;
              return [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(index);
                    },
                    child: AllExpensesItem(
                      isActive: selectedIndex == index,
                      allExpensesItemModel: item,
                    ),
                  ),
                ),
                if (index != items.length - 1) const SizedBox(width: 16),
              ];
            }).toList(),
      ),
    );
  }

  void updateIndex(int index) {
    if (selectedIndex != index) {
      selectedIndex = index;
    }
    setState(() {});
  }
}
