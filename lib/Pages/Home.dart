import 'package:card_with_backed/Pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:card_with_backed/PersonModel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Welcome",),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white54,

      ),
      body: new Container(
        width: MediaQuery.of(context).size.width*0.95,
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: PersonList.length,
          itemBuilder: (context, i){
            return GestureDetector(
              onTap: (){},
              child: Card(
                color: Colors.blueGrey,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(PersonList[i].imagepath,
                        fit: BoxFit.fitHeight,),
                      ),

                      Positioned(
                        left: 0,
                          right: 0,
                          top: 250,
                        child: Text("Name : " + PersonList[i].name,
                        style: TextStyle(color: Colors.black,
                        fontSize: 20),),
                          ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 275,
                        child: Text("Age : " + PersonList[i].age,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20),),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 300,
                        child: Text("Address : " + PersonList[i].address,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20),),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 325,
                        child: Text("Contact : " + PersonList[i].contact,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20),),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => new loginPage())),
                        child: Icon(
                          Icons.login_outlined,
                          color: Colors.blueGrey,
                          size: 25,
                        ),
                      ),

                    ],
                  ),



                ),

              ),


            );
          },


        ),
      ),


    );
  }
}
