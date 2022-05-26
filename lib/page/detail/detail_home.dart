import 'package:flutter/material.dart';
import 'package:travell_in/data/data_wisata.dart';

class DetailScreen extends StatefulWidget {
  final DataWisata dataWisata;

  const DetailScreen({Key? key, required this.dataWisata}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double _screenWidth = 0;

  @override
  void didChangeDependencies() {
    _screenWidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.dataWisata.title}'),
        backgroundColor: widget.dataWisata.materialColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: 'background' + widget.dataWisata.title,
              child: Container(
                color: widget.dataWisata.materialColor,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 230.0,
              child: Hero(
                tag: 'image' + widget.dataWisata.image,
                child: Image.network(
                  widget.dataWisata.image,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 246.0,
              left: 16.0,
              width: _screenWidth - 64.0,
              child: Hero(
                tag: 'text' + widget.dataWisata.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.dataWisata.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 288.0,
              left: 25.0,
              width: _screenWidth - 64.0,
              child: Hero(
                tag: 'subtitle' + widget.dataWisata.description,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.dataWisata.description,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
