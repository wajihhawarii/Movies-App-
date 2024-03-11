import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/drawer/search.dart';
import 'package:movietrain/views/widgets/drawer/searchResultsItems.dart';

class SearchMoviePage extends StatefulWidget {
  const SearchMoviePage({super.key});

  @override
  State<SearchMoviePage> createState() => _searchbarfunState();
}

class _searchbarfunState extends State<SearchMoviePage> {
  final TextEditingController searchtext = TextEditingController();
  bool showlist = false;
  var val1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 50, bottom: 20, right: 10),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: TextFormField(
                      controller: searchtext,
                      onChanged: (value) {
                        searchRes.clear();
                        setState(() {
                          val1 = value;
                        });
                      },
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                searchtext.clear();
                              });
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.amber.withOpacity(0.6),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.amber,
                          ),
                          hintText: 'Find your movie....',
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                          border: InputBorder.none),
                    )),

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                searchtext.text.isNotEmpty
                    ? FutureBuilder(
                        future: searchlistfunction(val1),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return const SearchResultItems();
                          } else {
                            return Container(
                              width: double.infinity,
                              height: 600,
                              child: const Center(
                                  child: CircularProgressIndicator(
                                color: Colors.amber,
                              )),
                            );
                          }
                        })
                    : Center(
                        child: Container(
                        height: 700,
                        width: double.infinity,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                              "Search for your movies through \n the list from above",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 16)),
                        ),
                      )),
              ],
            )),
      ),
    );
  }
}
