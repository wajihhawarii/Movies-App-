import 'package:flutter/material.dart';
import 'package:movietrain/Api/fetchdate/drawer/search.dart';
import 'package:movietrain/views/widgets/drawer/cheackResult_Search.dart';

class SearchResultItems extends StatelessWidget {
  const SearchResultItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 720,
        child: ListView.builder(
            itemCount: searchRes.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckResultSearch(
                                  searchRes[index].id,
                                  searchRes[index].mediaType,
                                )));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(top: 4, bottom: 4),
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(20, 20, 20, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  //color filter

                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500${searchRes[index].posterPath}'),
                                  fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ///////////////////////
                                  //media type
                                  Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      '${searchRes[index].mediaType}',
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      //vote average box
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 30,
                                        // width:
                                        //     100,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.amber.withOpacity(0.2),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(6))),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  '${searchRes[index].voteAverage}')
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      //popularity
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.amber.withOpacity(0.2),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(8))),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.people_outline_sharp,
                                                color: Colors.amber,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                  '${searchRes[index].popularity}')
                                            ],
                                          ),
                                        ),
                                      ),

                                      //
                                    ],
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height: 85,
                                      child: Text(
                                          textAlign: TextAlign.left,
                                          ' ${searchRes[index].overview}',
                                          // 'dsfsafsdffdsfsdf sdfsadfsdf sadfsafd',
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.white)))
                                ]))
                      ])));
            }));
  }
}
