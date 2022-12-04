import 'package:flutter/material.dart';
import 'games.dart';
import 'model.dart';
import 'base_network.dart';

class DetailGames extends StatefulWidget {
  final ProductData? name;
  const DetailGames({Key? key, required this.name}) : super(key: key);

  @override
  State<DetailGames> createState() => _DetailGamesState();
}

class _DetailGamesState extends State<DetailGames> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        
        title: Text("${widget.name?.title}",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset("assets/bg5.jpg", width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: ListView(
                  children : [
                    Container(
                      child : SizedBox(
                                child: Image.network("${widget.name?.thumbnail}")),
                      // Center(
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       SizedBox(
                      //           width: 450, height: 400,
                      //           child: Image.network("${widget.name?.thumbnail}")),
                      //       Padding(padding: const EdgeInsets.only(top:8.0)),

                      //       // Text("Brand : ${widget.name?.brand}",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
                      //       // Text("Name : ${widget.name?.name}"),
                      //       // Text("Categorry : ${widget.name?.category}"),
                      //       // Text("Price : ${widget.name?.price}"),
                      //       Container(
                      //         padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      //         child: Row(
                      //           children: [
                      //             Text("Name : ${widget.name?.title}",style: TextStyle(fontSize: 22),),
                      //           ],
                      //         ),
                      //       ),
                        
                      //       Container(
                      //         padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      //         child: Row(
                      //           children: [
                      //             Text("Platform : ${widget.name?.platform}",style: TextStyle(fontSize: 20),textAlign: TextAlign.right,)
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      //         child: Wrap(
                      //           children: [
                      //             Text("Description : ${widget.name?.shortDescription}",style: TextStyle(fontSize: 16),)
                      //           ],
                      //         ),
                      //       ),
                      //       // CircleAvatar(
                      //       //   radius: 30,
                      //       //   backgroundImage:
                      //       //   NetworkImage("${widget.name?.productColors}"),
                      //       // ),
                      //       Padding(padding: const EdgeInsets.only(top:8.0)),
                      //       // Text(
                      //       //   (widget.name?.overview != null) ? "${widget.name?.overview}" : "TBA",
                      //       //   style: TextStyle(color: Colors.white), textAlign: TextAlign.justify,
                      //       // ),

                      //     ],
                      //   ),
                      // ),

                    ),
                    Container(
                      width: 100,
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          height: 500,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black, width: 3),
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Column(
                            children: [
                              Text("${widget.name?.title}", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30, ),),
                              Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(25, 0, 12.5, 0),
                        child: Container(
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.purpleAccent[400],
                            borderRadius: BorderRadius.circular(20)
                            
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Platform : ${widget.name?.platform}", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                          
                        ),),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.purpleAccent[400],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Developer : ${widget.name?.developer}", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),)
                        
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(25, 0, 12.5, 0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.purpleAccent[400],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Genre : ${widget.name?.genre}", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                          ),
                          
                        ),),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.purpleAccent[400],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Publisher : ${widget.name?.publisher}", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                        ),
                      
                      ],
                    ),
                    SizedBox(height: 10,),
                    Center(child: Container(
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.purpleAccent[400],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Release Date : ${widget.name?.releaseDate}", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),),
                        Container(
                          padding: EdgeInsets.fromLTRB(35, 10, 35, 0),
                          child: Text("${widget.name?.shortDescription}", textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 16),)),
                            ],
                      
                          ),
                    ),
                    
                  
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}