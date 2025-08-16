import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, this.onTap});
   final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          decoration: BoxDecoration(
            color: kcolor,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Text("Add",style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),)),
          
          height: 50,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}