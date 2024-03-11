import 'package:flutter/material.dart';
import 'package:movietrain/views/screens/movies/moviedetailes.dart';

// ignore: must_be_immutable
class CheckResultSearch extends StatefulWidget {
  int? newid;
  String? newtype;
  CheckResultSearch(this.newid, this.newtype, {super.key});

  @override
  State<CheckResultSearch> createState() => _DescriptioncheckuiState();
}

class _DescriptioncheckuiState extends State<CheckResultSearch> {
  checktype() {
    if (widget.newtype.toString() == 'movie') {
      return MovieDetailes(
        id: widget.newid,
      );
    } else if (widget.newtype.toString() == 'tv') {
      return MovieDetailes(id: widget.newid);
    } else if (widget.newtype.toString() == 'person') {
      // return persondescriptionui(widget.id);
    } else {
      return errorui(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return checktype();
  }
}

Widget errorui(context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Error'),
    ),
    body: const Center(
      child: Text('no Such page found'),
    ),
  );
}
