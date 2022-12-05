import 'dart:async';
import 'data_source.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'detail_games.dart';
import 'base_network.dart';
// import 'model_shooter.dart';
import 'model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'detail_makeup.dart';
// import 'package:module_ifsi_flutter/model.dart';
// import 'package:module_ifsi_flutter/covid_data_source.dart';

class PageShooter extends StatefulWidget {
  const PageShooter({Key? key}) : super(key: key);
  @override
  _PageShooterState createState() => _PageShooterState();
}

class _PageShooterState extends State<PageShooter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink[100],
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      //   title: Text("Daftar Games Free"),
      // ),
      body: _buildDetailCountriesBody()
      ,
    );
  }

  Widget _buildDetailCountriesBody() {
    return Container(
      child: FutureBuilder(
        future: ShooterSource.instance.loadShooter(),
        builder: (
            BuildContext context,
            AsyncSnapshot<dynamic> snapshot,
            ) {
          if (snapshot.hasError) {
            print(snapshot);
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            ProductDataModel makeupModel =
            ProductDataModel.fromJson(snapshot.data);
            print(makeupModel);
            return _buildSuccessSection(makeupModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(ProductDataModel data) {
    return Stack(
      children: [
        Image.asset("assets/bg4.jpg", width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: data.product?.length,
          itemBuilder: (BuildContext context, int index) {//2 parameter
            // final ShooterModel? games = data.product?[index];
            return InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailGames(name: games,)));
              },
              child: Container(
                  // shape: RoundedRectangleBorder(
                  //   side: BorderSide(
                  //     color: Colors.black,
                  //   ),
                  //   borderRadius: BorderRadius.circular(20.0),
                  // ),
                  
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200, height: 130,
                              child: Image.network("${data.product?[index].thumbnail}",)),
                          Column(
                              children:[
                                Text(
                                "${data.product?[index].title}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.white),
                              ),
                              Text(
                                "Platform : ${data.product?[index].platform}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.white),
                              )
                              ],),
                          // SizedBox(
                          //   height: 30,
                          // ),
                        ],
                      ),
                    ),
                
              ),
            );
            // _buildItemCountries("${data.countries?[index].name}");
          },
        ),
      ],
    );
  }

  Widget _buildItemCountries(String value) {
    return Text(value);
  }
}
