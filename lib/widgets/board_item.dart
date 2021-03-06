import 'package:flutter/material.dart';
import 'package:latihan1/model/board_item_model.dart';

class BoardItem extends StatelessWidget {
  final BoardItemModel itemModel;
  final Function() onTap;

  BoardItem({required this.itemModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(itemModel.isRevealed || itemModel.isCompleted
            ? itemModel.imagePath
            : "assets/question.webp"),
      ),
    );
  }
}
