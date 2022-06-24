import 'package:flutter/material.dart';
import 'package:flutter_application_2/HocBong/category.dart';
import 'package:flutter_application_2/HocBong/values.dart';

class CategorySelector5 extends StatefulWidget {
  const CategorySelector5({Key? key}) : super(key: key);

  @override
  _CategorySelector5State createState() => _CategorySelector5State();
}

class _CategorySelector5State extends State<CategorySelector5> {
  List<Category5> categories5 = StaticValues().categories5;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories5.length,
            (index) {
              Category5 category5 = categories5[index];
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
                    category5.name5,
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
