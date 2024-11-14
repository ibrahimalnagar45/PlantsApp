 import 'package:flutter/material.dart';

void ShowSnakBar (BuildContext context,String message )
{
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
}