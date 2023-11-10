import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List imagelists = [
  {"id": 1, "image_path": 'assets/imagesres/1.png'},
  {"id": 2, "image_path": 'assets/imagesres/2.png'},
  {"id": 3, "image_path": 'assets/imagesres/3.png'}
];
List Countrylist = ['Afghansitan', 'Albania', 'Algeria', 'Andorra', 'Angola'];
List shortCountrylist = ['AF', 'AL', 'DZ', 'AD', 'AO'];
void main() => runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'HOME',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                        color: Colors.white,
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: Colors.white,
                      child: CarouselSlider(
                          options: CarouselOptions(
                            height: 200,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.85,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 5),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.1,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: imagelists
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.fill,
                                  width: 300,
                                ),
                              )
                              .toList())),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/imagesres/4.png',
                              height: 180,
                              width: 300,
                              fit: BoxFit.fill,
                            )
                          ],
                        ),
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 280,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Search Country',
                            hintText: 'Type here to search...',
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          onTap: () {},
                          leading: Text(shortCountrylist[index]),
                          title: Text(Countrylist[index]),
                          trailing: ,
                    );
                  },
                  itemCount: Countrylist.length,
                )
              ],
            ),
          )),
    ));
