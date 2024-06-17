import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final Size _size = MediaQuery.of(context).size;
    final h = mediaQuery.size.height;
    final w = mediaQuery.size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
                  child: Text(
                    'FOOD RESTAURANT ADMIN',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 17),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'DASHBOARD',
                    style: GoogleFonts.almarai(
                        textStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6))),
                  ),
                ),
              ],
            ),
            CustomGridView(),

            // Responsive(
            //   mobile: CustomGridView(
            //     crossAxisCount: _size.width < 650 ? 2 : 4,
            //     childAspectRatio: _size.width < 650 ? 1.3 : 1,
            //   ),
            //   tablet: FileInfoCardGridView(),
            //   desktop: FileInfoCardGridView(
            //     childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridTiles(
      containerColors: [
        Color(0xffFFBA5A),
        Color(0xffF36A7B),
        Color(0xff5893D4),
        Color(0xff1CB3C8),
        Color(0xff1CB3C8)
      ],
      svgAssets: [
        'assets/images/tile1.svg',
        'images/tile2.svg',
        'images/tile5.svg',
        'images/tile4.svg',
        'images/tile4.svg',
      ],
      imageSizes: [25, 24, 21, 22, 22],
      text1: [
        'ORDERS',
        'ITEMS',
        'REJECTED ORDERS',
        'TOTAL EARNINGS',
        'BALANCE'
      ],
      text2: ['327', '9', '34', '\$50786.7', '\$41057.00'],
    );
  }
}

class GridTiles extends StatefulWidget {
  final List<Color> containerColors;
  final List<String> svgAssets;
  final List<double> imageSizes;
  final List<String> text1;
  final List<String> text2;

  const GridTiles({
    Key? key,
    required this.containerColors,
    required this.svgAssets,
    required this.imageSizes,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  State<GridTiles> createState() => _GridTilesState();
}

class _GridTilesState extends State<GridTiles> {
  late List<bool> isHovered;

  @override
  void initState() {
    super.initState();
    isHovered = List.generate(widget.svgAssets.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              mainAxisExtent: 80,
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            final hoveredTransform = Matrix4.identity()..scale(1.8, 1.8);
            final hoveredOpacity = 0.4;
            final transform =
                isHovered[index] ? hoveredTransform : Matrix4.identity();
            final opacity = isHovered[index] ? hoveredOpacity : 1.0;
            final alignment = Alignment.center;
            return MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered[index] = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered[index] = false;
                });
              },
              child: AnimatedContainer(
                transformAlignment: Alignment.center,
                alignment: alignment,
                duration: Duration(milliseconds: 200),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          color: widget.containerColors[index],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              transformAlignment: Alignment.center,
                              alignment: alignment,
                              duration: Duration(milliseconds: 200),
                              transform: transform,
                              child: Opacity(
                                opacity: opacity,
                                child: SvgPicture.asset(
                                  height: widget.imageSizes[index],
                                  width: widget.imageSizes[index],
                                  widget.svgAssets[index],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.text1[index],
                              style: GoogleFonts.akatab(),
                            ),
                            Text(
                              widget.text2[index],
                              style: GoogleFonts.akatab(),
                            ),
                          ],
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
