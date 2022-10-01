import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  final String imagePath;
  final String details;
  DetailsPage({
     required this.imagePath,
      required this.details,
      });
      
  @override
  Widget build (BuildContext context){
    String title;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                  )
                ),
              ),
              ),
              Container(
                height: 260,
                child: Column(
                  children: <Widget>[
                    Text(
                      details,
                       style: TextStyle(
                      color: Colors.orange,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                  ),
              )
          ],
          ),
      ),
    );
  }
}