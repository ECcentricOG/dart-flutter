import 'package:flutter/material.dart';

Icon likeFun(bool isContain) {
  return isContain
      ? const Icon(
          Icons.favorite,
          color: Colors.redAccent,
        )
      : const Icon(
          Icons.favorite_border,
          color: Colors.red,
        );
}
