import 'package:flutter/material.dart';
import 'info.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpg',
    details: 'Корги',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    details: 'Корги',
  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    details: 'Корги',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
    details: 'Корги',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
    details: 'Корги',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
    details: 'Корги',
  ),
];

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
              ),
            Text('Корги', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    )
                  ),
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ), itemBuilder:(context, index){
                    return RawMaterialButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>DetailsPage(
                            imagePath: _images[index].imagePath,
                            details: '12',
                          ),
                        ),);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                            ),
                        ),
                      ),
                      );
                  }, itemCount: _images.length,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class ImageDetails{
  final String imagePath;
  final String details;
  ImageDetails ({
    required this.imagePath, 
    required this.details
    });
}