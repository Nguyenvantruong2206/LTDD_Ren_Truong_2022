import 'package:flutter/material.dart';
import 'package:flutter_application_2/DoanTN/category.dart';
import 'package:flutter_application_2/DoanTN/values.dart';

class CategorySelector4 extends StatefulWidget {
  const CategorySelector4({Key? key}) : super(key: key);

  @override
  _CategorySelector4State createState() => _CategorySelector4State();
}

class _CategorySelector4State extends State<CategorySelector4> {
  List<Category4> categories4 = StaticValues().categories4;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories4.length,
            (index) {
              Category4 category4 = categories4[index];
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
                    category4.name4,
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
