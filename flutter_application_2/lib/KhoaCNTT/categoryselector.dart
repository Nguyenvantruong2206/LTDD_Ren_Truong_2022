import 'package:flutter/material.dart';
import 'package:flutter_application_2/KhoaCNTT/category.dart';
import 'package:flutter_application_2/KhoaCNTT/values.dart';

class CategorySelector2 extends StatefulWidget {
  const CategorySelector2({Key? key}) : super(key: key);

  @override
  _CategorySelector2State createState() => _CategorySelector2State();
}

class _CategorySelector2State extends State<CategorySelector2> {
  List<Category2> categories2 = StaticValues().categories2;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories2.length,
            (index) {
              Category2 category2 = categories2[index];
              bool isSelected = index == selectedCategoryIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.selectedCategoryIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isSelected ? Colors.black : Colors.white),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    category2.name2,
                    style: TextStyle(
                        fontSize: 15,
                        color: isSelected ? Colors.white : Colors.black),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
