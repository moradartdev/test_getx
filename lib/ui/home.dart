
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Test Getx'),),
     body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('welcome to home screen',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
              ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            height: 63,
            minWidth: double.infinity,
            color: Colors.blue,
            child: Text('Go to screen one',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w700,

                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            child:
            MaterialButton(
              height: 63,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 20,),
              shape: RoundedRectangleBorder(
                borderRadius : BorderRadius.circular(12)
              ),
            onPressed: (){

            },
            child: Text(
              'Go to screen two',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            color: Colors.blue,
            height: 63,
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            onPressed: (){},
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
            
            
          ),
          child: Text(
            'Go to screen three',
            style: TextStyle(color: Colors.black,fontSize: 19,
            fontWeight: FontWeight.w700,
              ),
            )
          ),
          ),
        ],
       ),
      )
    );
  }
}