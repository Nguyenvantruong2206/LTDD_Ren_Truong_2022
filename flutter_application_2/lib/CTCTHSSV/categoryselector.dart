import 'package:flutter/material.dart';
import 'package:flutter_application_2/CTCTHSSV/category.dart';
import 'package:flutter_application_2/CTCTHSSV/values.dart';

class CategorySelector3 extends StatefulWidget {
  const CategorySelector3({Key? key}) : super(key: key);

  @override
  _CategorySelector3State createState() => _CategorySelector3State();
}

class _CategorySelector3State extends State<CategorySelector3> {
  List<Category3> categories3 = StaticValues().categories3;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories3.length,
            (index) {
              Category3 category3 = categories3[index];
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
                    category3.name3,
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
