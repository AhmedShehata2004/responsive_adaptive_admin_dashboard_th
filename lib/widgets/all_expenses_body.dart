import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

int selectedIndex = -1;

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    AllExpensesItemModel(text: 'Balance', date: 'April 2022', price: 20129.0),
    AllExpensesItemModel(text: 'Income', date: 'April 2022', price: 20129.0),
    AllExpensesItemModel(text: 'Expenses', date: 'April 2022', price: 20129),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: index == 1 ? 12 : 0,
                  ),
                  child: AllExpensesItem(
                    isActive: selectedIndex == index,
                    allExpensesItemModel: item,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }

  void updateIndex(int index) {
    if (selectedIndex != index) {
      selectedIndex = index;
    }
    setState(() {});
  }
}
