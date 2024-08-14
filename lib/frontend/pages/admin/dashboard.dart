/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: 1920,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 46, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FE),
              ),
              child: SizedBox(
                width: 1671,
                child: Container(
                  padding: EdgeInsets.fromLTRB(40, 808, 38.6, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 0.4, 33),
                        child: SizedBox(
                          width: 1591,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 31, 2),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0x0D000000)),
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFFFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x268898AA),
                                      offset: Offset(0, 0),
                                      blurRadius: 16,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: 1050,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 21, 0, 16),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        SizedBox(
                                          width: 1050,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(24, 0, 24, 20),
                                                child: SizedBox(
                                                  width: 1002,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 2, 12.5, 1),
                                                        child: SizedBox(
                                                          width: 88,
                                                          child: Text(
                                                            'Page visits',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 18,
                                                              color: Color(0xFF32325D),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          color: Color(0xFF5E72E4),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(0x1A32325D),
                                                              offset: Offset(0, 4),
                                                              blurRadius: 3,
                                                            ),
                                                            BoxShadow(
                                                              color: Color(0x14000000),
                                                              offset: Offset(0, 1),
                                                              blurRadius: 1.5,
                                                            ),
                                                          ],
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.fromLTRB(7, 3, 8.1, 6),
                                                          child:
                                                          Text(
                                                            'See all',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFFFFFFFF),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 50.5),
                                                child: SizedBox(
                                                  width: 1050,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(1, 0.5, 0, 0),
                                                    child: Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Color(0xFFF6F9FC),
                                                          ),
                                                          child: SizedBox(
                                                            width: 1049,
                                                            child: Container(
                                                              padding: EdgeInsets.fromLTRB(25, 13.5, 0, 15.5),
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                                                    child: SizedBox(
                                                                      width: 66,
                                                                      child: Text(
                                                                        'PAGE NAME',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w700,
                                                                          fontSize: 10,
                                                                          height: 1.2,
                                                                          letterSpacing: 0.9,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'VISITORS',
                                                                    style: GoogleFonts.getFont(
                                                                      'Open Sans',
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 10,
                                                                      height: 1.2,
                                                                      letterSpacing: 0.9,
                                                                      color: Color(0xFF8898AA),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'UNIQUE USERS',
                                                                    style: GoogleFonts.getFont(
                                                                      'Open Sans',
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 10,
                                                                      height: 1.2,
                                                                      letterSpacing: 0.9,
                                                                      color: Color(0xFF8898AA),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'BOUNCE RATE',
                                                                    style: GoogleFonts.getFont(
                                                                      'Open Sans',
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 10,
                                                                      height: 1.2,
                                                                      letterSpacing: 0.9,
                                                                      color: Color(0xFF8898AA),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: -0.5,
                                                          child: SizedBox(
                                                            width: 1050,
                                                            height: 2,
                                                            child: SvgPicture.network(
                                                              'assets/vectors/Unknown',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 18),
                                                child: SizedBox(
                                                  width: 1049,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 1049,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 870.2,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 129,
                                                                    child: Text(
                                                                      '/argon/index.html',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '3,985',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '319',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                                                  child: Text(
                                                                    '',
                                                                    style: GoogleFonts.getFont(
                                                                      'Roboto Condensed',
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14,
                                                                      color: Color(0xFF2DCE89),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '46,53%',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 18),
                                                child: SizedBox(
                                                  width: 1049,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 1049,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 870.2,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 134,
                                                                    child: Text(
                                                                      '/argon/charts.html',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '3,513',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '294',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                                                  child: Text(
                                                                    '',
                                                                    style: GoogleFonts.getFont(
                                                                      'Roboto Condensed',
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14,
                                                                      color: Color(0xFF2DCE89),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '36,49%',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 18),
                                                child: SizedBox(
                                                  width: 1049,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 1049,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 870.2,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 133,
                                                                    child: Text(
                                                                      '/argon/tables.html',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '2,050',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '147',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                                                  child: Text(
                                                                    '',
                                                                    style: GoogleFonts.getFont(
                                                                      'Roboto Condensed',
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14,
                                                                      color: Color(0xFF2DCE89),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '50,87%',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                                child: SizedBox(
                                                  width: 1049,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 1049,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 870.2,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 136,
                                                                    child: Text(
                                                                      '/argon/profile.html',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '1,795',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '190',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                                                  child: Text(
                                                                    '',
                                                                    style: GoogleFonts.getFont(
                                                                      'Roboto Condensed',
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14,
                                                                      color: Color(0xFF2DCE89),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '46,53%',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 110,
                                          child: SizedBox(
                                            width: 1049,
                                            height: 34,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                  child: SizedBox(
                                                    width: 1049,
                                                    height: 2,
                                                    child: SvgPicture.network(
                                                      'assets/vectors/Unknown',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: 870.2,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                            child: SizedBox(
                                                              width: 53,
                                                              child: Text(
                                                                '/argon/',
                                                                style: GoogleFonts.getFont(
                                                                  'Open Sans',
                                                                  fontWeight: FontWeight.w700,
                                                                  fontSize: 14,
                                                                  color: Color(0xFF525F7F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '4,569',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFF525F7F),
                                                            ),
                                                          ),
                                                          Text(
                                                            '340',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFF525F7F),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                                            child: Text(
                                                              '',
                                                              style: GoogleFonts.getFont(
                                                                'Roboto Condensed',
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 14,
                                                                color: Color(0xFF2DCE89),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '46,53%',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFF525F7F),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0x0D000000)),
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFFFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x268898AA),
                                      offset: Offset(0, 0),
                                      blurRadius: 16,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: 510,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 21, 0, 18),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        SizedBox(
                                          width: 510,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(24, 0, 24, 20),
                                                child: SizedBox(
                                                  width: 462,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 2, 12.5, 1),
                                                        child: SizedBox(
                                                          width: 103,
                                                          child: Text(
                                                            'Social traffic',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 18,
                                                              color: Color(0xFF32325D),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(6),
                                                          color: Color(0xFF5E72E4),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(0x1A32325D),
                                                              offset: Offset(0, 4),
                                                              blurRadius: 3,
                                                            ),
                                                            BoxShadow(
                                                              color: Color(0x14000000),
                                                              offset: Offset(0, 1),
                                                              blurRadius: 1.5,
                                                            ),
                                                          ],
                                                        ),
                                                        child: Container(
                                                          padding: EdgeInsets.fromLTRB(7, 3, 8.1, 6),
                                                          child:
                                                          Text(
                                                            'See all',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFFFFFFFF),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 50.5),
                                                child: SizedBox(
                                                  width: 510,
                                                  child: Container(
                                                    padding: EdgeInsets.fromLTRB(1, 0.5, 0, 0),
                                                    child: Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Color(0xFFF6F9FC),
                                                          ),
                                                          child: SizedBox(
                                                            width: 509,
                                                            child: Container(
                                                              padding: EdgeInsets.fromLTRB(25, 13.5, 0, 15.5),
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                                                    child: SizedBox(
                                                                      width: 56,
                                                                      child: Text(
                                                                        'REFERRAL',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w700,
                                                                          fontSize: 10,
                                                                          height: 1.2,
                                                                          letterSpacing: 0.9,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'VISITORS',
                                                                    style: GoogleFonts.getFont(
                                                                      'Open Sans',
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 10,
                                                                      height: 1.2,
                                                                      letterSpacing: 0.9,
                                                                      color: Color(0xFF8898AA),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: -0.5,
                                                          child: SizedBox(
                                                            width: 510,
                                                            height: 2,
                                                            child: SvgPicture.network(
                                                              'assets/vectors/Unknown',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 18),
                                                child: SizedBox(
                                                  width: 509,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 509,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 416,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 63,
                                                                    child: Text(
                                                                      'Facebook',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w400,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '5,480',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 0, 7.4, 0),
                                                                      child: Text(
                                                                        '70%',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w400,
                                                                          fontSize: 14,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 9, 0, 7),
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0xFFE1E4E7),
                                                                        ),
                                                                        child: Container(
                                                                          width: 120,
                                                                          height: 3,
                                                                          child:
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Color(0xFFFB6340),
                                                                            ),
                                                                            child: Container(
                                                                              width: 72,
                                                                              height: 3,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 19),
                                                child: SizedBox(
                                                  width: 509,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 509,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 416,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 47,
                                                                    child: Text(
                                                                      'Google',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w400,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '4,807',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 0, 7.4, 0),
                                                                      child: Text(
                                                                        '80%',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w400,
                                                                          fontSize: 14,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 9, 0, 7),
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0xFFE1E4E7),
                                                                        ),
                                                                        child: Container(
                                                                          width: 120,
                                                                          height: 3,
                                                                          padding: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                                                          child:
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Color(0xFF11CDEF),
                                                                            ),
                                                                            child: Container(
                                                                              width: 107,
                                                                              height: 3,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 17),
                                                child: SizedBox(
                                                  width: 509,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 509,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 416,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 67,
                                                                    child: Text(
                                                                      'Instagram',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w400,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '3,678',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 0, 7.4, 0),
                                                                      child: Text(
                                                                        '75%',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w400,
                                                                          fontSize: 14,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 9, 0, 7),
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0xFFE1E4E7),
                                                                        ),
                                                                        child: Container(
                                                                          width: 120,
                                                                          height: 3,
                                                                          padding: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                                                          child:
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Color(0xFF11CDEF),
                                                                            ),
                                                                            child: Container(
                                                                              width: 107,
                                                                              height: 3,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                                child: SizedBox(
                                                  width: 509,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                        child: SizedBox(
                                                          width: 509,
                                                          height: 2,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                        child: Align(
                                                          alignment: Alignment.topLeft,
                                                          child: SizedBox(
                                                            width: 416,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                                  child: SizedBox(
                                                                    width: 46,
                                                                    child: Text(
                                                                      'Twitter',
                                                                      style: GoogleFonts.getFont(
                                                                        'Open Sans',
                                                                        fontWeight: FontWeight.w400,
                                                                        fontSize: 14,
                                                                        color: Color(0xFF525F7F),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '2,645',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF525F7F),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 0, 7.4, 0),
                                                                      child: Text(
                                                                        '30%',
                                                                        style: GoogleFonts.getFont(
                                                                          'Open Sans',
                                                                          fontWeight: FontWeight.w400,
                                                                          fontSize: 14,
                                                                          color: Color(0xFF8898AA),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(0, 9, 0, 7),
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          color: Color(0xFFE1E4E7),
                                                                        ),
                                                                        child: Container(
                                                                          width: 120,
                                                                          height: 3,
                                                                          child:
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              color: Color(0xFFFB6340),
                                                                            ),
                                                                            child: Container(
                                                                              width: 72,
                                                                              height: 3,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 110,
                                          child: SizedBox(
                                            width: 509,
                                            height: 34,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                                  child: SizedBox(
                                                    width: 509,
                                                    height: 2,
                                                    child: SvgPicture.network(
                                                      'assets/vectors/Unknown',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(23, 0, 23, 0),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: 416,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                                            child: SizedBox(
                                                              width: 63,
                                                              child: Text(
                                                                'Facebook',
                                                                style: GoogleFonts.getFont(
                                                                  'Open Sans',
                                                                  fontWeight: FontWeight.w400,
                                                                  fontSize: 14,
                                                                  color: Color(0xFF525F7F),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '1,480',
                                                            style: GoogleFonts.getFont(
                                                              'Open Sans',
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xFF525F7F),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(0, 0, 7.4, 0),
                                                                child: Text(
                                                                  '60%',
                                                                  style: GoogleFonts.getFont(
                                                                    'Open Sans',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF8898AA),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(0, 9, 0, 7),
                                                                child: Container(
                                                                  decoration: BoxDecoration(
                                                                    color: Color(0xFFE1E4E7),
                                                                  ),
                                                                  child: Container(
                                                                    width: 120,
                                                                    height: 3,
                                                                    child:
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                        color: Color(0xFFFB6340),
                                                                      ),
                                                                      child: Container(
                                                                        width: 72,
                                                                        height: 3,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1593,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 4.3, 4),
                                  child: Text(
                                    '© 2021',
                                    style: GoogleFonts.getFont(
                                      'Open Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF8898AA),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Creative Tim',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.8,
                                    color: Color(0xFF5E72E4),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
                              child: SizedBox(
                                width: 318.4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                      child: SizedBox(
                                        width: 82,
                                        child: Text(
                                          'Creative Tim',
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF8898AA),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'About Us',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF8898AA),
                                      ),
                                    ),
                                    Text(
                                      'Blog',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF8898AA),
                                      ),
                                    ),
                                    Text(
                                      'MIT License',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF8898AA),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1, 1.108),
                    end: Alignment(1, 1.108),
                    colors: <Color>[Color(0xFF5E72E4), Color(0xFF825EE4)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: SizedBox(
                  width: 1670,
                  height: 381,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(39, 27, 39, 131),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 2.1, 53),
                          child: SizedBox(
                            width: 1590,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 12, 11, 13),
                                  child: SizedBox(
                                    width: 97,
                                    child: Text(
                                      'DASHBOARD',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 33, 0),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: -11,
                                            child: Opacity(
                                              opacity: 0.6,
                                              child: Container(
                                                width: 315,
                                                height: 47,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Color(0xFFFFFFFF)),
                                                  borderRadius: BorderRadius.circular(25.5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 315,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(13, 11, 0, 13),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                                    child: Opacity(
                                                      opacity: 0.6,
                                                      child: Container(
                                                        width: 23,
                                                        height: 23,
                                                        padding: EdgeInsets.fromLTRB(3.6, 4.3, 3.6, 2.9),
                                                        child:
                                                        SizedBox(
                                                          width: 15.8,
                                                          height: 15.8,
                                                          child: SvgPicture.network(
                                                            'assets/vectors/Unknown',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 3, 0, 1),
                                                    child: Opacity(
                                                      opacity: 0.603,
                                                      child: Text(
                                                        'Search',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 14,
                                                          color: Color(0xFFFFFFFF),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 9, 6),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD8D8D8),
                                          borderRadius: BorderRadius.circular(18),
                                        ),
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          child:
                                          Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                            ),
                                            child:
                                            Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    'assets/images/team_4800_x_800.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 36,
                                                height: 36,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 14, 0, 14),
                                      child: Text(
                                        'Jessica Jones',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(25, 17, 26, 19),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                        child: SizedBox(
                                          width: 326,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                                      child: Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Text(
                                                          'TRAFFIC',
                                                          style: GoogleFonts.getFont(
                                                            'Open Sans',
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 14,
                                                            color: Color(0xFF8898AA),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                                      child: Text(
                                                        '350,897',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color(0xFF32325D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF5365C),
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: Container(
                                                    width: 48,
                                                    padding: EdgeInsets.fromLTRB(14, 15, 14, 12),
                                                    child:
                                                    Text(
                                                      '',
                                                      style: GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2, 7.6, 1),
                                              child: Text(
                                                '',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 10.7, 0),
                                              child: Text(
                                                '3.48%',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Since last month',
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                                color: Color(0xFF8898AA),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 26, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(25, 17, 26, 19),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                        child: SizedBox(
                                          width: 326,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                                      child: Text(
                                                        'NEW USERS',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 14,
                                                          color: Color(0xFF8898AA),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                                      child: Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Text(
                                                          '2,356',
                                                          style: GoogleFonts.getFont(
                                                            'Open Sans',
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 20,
                                                            color: Color(0xFF32325D),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFB6340),
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: Container(
                                                    width: 48,
                                                    padding: EdgeInsets.fromLTRB(14, 15, 14, 12),
                                                    child:
                                                    Text(
                                                      '',
                                                      style: GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2, 7.6, 1),
                                              child: Text(
                                                '',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 10.7, 0),
                                              child: Text(
                                                '3.48%',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Since last month',
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                                color: Color(0xFF8898AA),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(25, 17, 26, 19),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                        child: SizedBox(
                                          width: 326,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                                      child: Text(
                                                        'SALES',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 14,
                                                          color: Color(0xFF8898AA),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(1, 0, 4, 0),
                                                      child: Text(
                                                        '924',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 20,
                                                          color: Color(0xFF32325D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFD600),
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: Container(
                                                    width: 48,
                                                    padding: EdgeInsets.fromLTRB(14, 15, 14, 12),
                                                    child:
                                                    Text(
                                                      '',
                                                      style: GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2, 7.6, 1),
                                              child: Text(
                                                '',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 10.7, 0),
                                              child: Text(
                                                '1.10%',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF2DCE89),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Since yesterday',
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                                color: Color(0xFF8898AA),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: SizedBox(
                                width: 377,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(25, 17, 26, 19),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                        child: SizedBox(
                                          width: 326,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                                      child: Text(
                                                        'PERFORMANCE',
                                                        style: GoogleFonts.getFont(
                                                          'Open Sans',
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 14,
                                                          color: Color(0xFF8898AA),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                                      child: Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Text(
                                                          '49,65%',
                                                          style: GoogleFonts.getFont(
                                                            'Open Sans',
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 20,
                                                            color: Color(0xFF32325D),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF11CDEF),
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: Container(
                                                    width: 48,
                                                    padding: EdgeInsets.fromLTRB(14, 15, 14, 12),
                                                    child:
                                                    Text(
                                                      '',
                                                      style: GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 18,
                                                        color: Color(0xFFFFFFFF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 170.3,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 2, 7.6, 1),
                                                    child: Text(
                                                      '',
                                                      style: GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xFF2DCE89),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '12%',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF2DCE89),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Since last month',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14,
                                                  color: Color(0xFF8898AA),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 289,
              top: 315,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment(-1, 1),
                    end: Alignment(1, 1),
                    colors: <Color>[Color(0xFF172B4D), Color(0xFF1A174D)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 42,
                      top: 98,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 149,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 200,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 250,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 301,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 352,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 42,
                      top: 402,
                      child: SizedBox(
                        width: 937,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 47.7,
                      top: 109,
                      child: SizedBox(
                        width: 930.8,
                        height: 294,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1052,
                      height: 491,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2, 23, 0, 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(23, 0, 25, 21),
                              child: SizedBox(
                                width: 1002,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(1, 0, 1, 7),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Opacity(
                                              opacity: 0.697,
                                              child: Text(
                                                'OVERVIEW',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                  height: 1.2,
                                                  letterSpacing: 0.9,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Sales value',
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF5E72E4),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(16.4, 9, 15.4, 9),
                                                child:
                                                Text(
                                                  'Month',
                                                  style: GoogleFonts.getFont(
                                                    'Open Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(17.3, 10, 17.2, 9),
                                              child:
                                              Text(
                                                'Week',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  color: Color(0xFF5E72E4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                              child: SizedBox(
                                width: 1050,
                                height: 2,
                                child: SvgPicture.network(
                                  'assets/vectors/Unknown',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(29, 0, 26.3, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 31),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$60k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$50k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 31),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$40k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$30k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$20k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$10k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 8, 10),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$0k',
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF8898AA),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(27, 0, 0, 0),
                                    child: SizedBox(
                                      width: 967.7,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                            child: SizedBox(
                                              width: 28,
                                              child: Text(
                                                'May',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF8898AA),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Jun',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Jul',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Aug',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Sep',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Oct',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Nov',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Dec',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 38,
              top: 315,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 39,
                      top: 426,
                      child: SizedBox(
                        width: 414,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 39,
                      top: 324,
                      child: SizedBox(
                        width: 414,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 39,
                      top: 222,
                      child: SizedBox(
                        width: 414,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 39,
                      top: 121,
                      child: SizedBox(
                        width: 414,
                        height: 2,
                        child: SvgPicture.network(
                          'assets/vectors/Unknown',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 511,
                      height: 491,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 19, 1, 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(23, 0, 23, 5),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'PERFORMANCE',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                    color: Color(0xFF8898AA),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(26, 0, 26, 22),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Total orders',
                                  style: GoogleFonts.getFont(
                                    'Open Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xFF32325D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                              child: SizedBox(
                                width: 510,
                                height: 1,
                                child: SvgPicture.network(
                                  'assets/vectors/Unknown',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(31, 0, 31, 0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 7.7, 11),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 39, 0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 82),
                                                  child: Text(
                                                    '30',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF8898AA),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 82),
                                                  child: Text(
                                                    '20',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF8898AA),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 82),
                                                  child: Text(
                                                    '10',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF8898AA),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                                  child: Text(
                                                    '0',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xFF8898AA),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 60, 58, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 254,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 110, 58, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 204,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 9, 58, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 305,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 90, 58, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 224,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 141, 59, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 173,
                                                child:
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFB6340),
                                                    borderRadius: BorderRadius.circular(5.5),
                                                  ),
                                                  child: Container(
                                                    width: 11,
                                                    height: 173,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 20, 0, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFB6340),
                                                borderRadius: BorderRadius.circular(5.5),
                                              ),
                                              child: Container(
                                                width: 11,
                                                height: 294,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 366.7,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                                            child: SizedBox(
                                              width: 16,
                                              child: Text(
                                                'Jul',
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFF8898AA),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Aug',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Sep',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Oct',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Nov',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                          Text(
                                            'Dec',
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF8898AA),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x268898AA),
                      offset: Offset(0, 0),
                      blurRadius: 16,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 250,
                  height: 1299,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(23, 16, 24, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 0, 61),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'assets/images/blue_logo.png',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 136,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 3, 0, 1.3),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 16,
                                      height: 14.7,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Dashboard',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Icons',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(2, 0, 2, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 12.5,
                                      height: 16,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Maps',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 27),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 13.3,
                                      height: 16,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'User profile',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    child: SizedBox(
                                      width: 32,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 1.5),
                                            child: SizedBox(
                                              width: 16,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFF5365C),
                                                        borderRadius: BorderRadius.circular(2.2),
                                                      ),
                                                      child: Container(
                                                        width: 4.4,
                                                        height: 4.4,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 1.5, 0, 1.5),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFF5365C),
                                                      ),
                                                      child: Container(
                                                        width: 10.2,
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 1.5),
                                            child: SizedBox(
                                              width: 16,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFF5365C),
                                                        borderRadius: BorderRadius.circular(2.2),
                                                      ),
                                                      child: Container(
                                                        width: 4.4,
                                                        height: 4.4,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 1.5, 0, 1.5),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFF5365C),
                                                      ),
                                                      child: Container(
                                                        width: 10.2,
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 1.5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF5365C),
                                                      borderRadius: BorderRadius.circular(2.2),
                                                    ),
                                                    child: Container(
                                                      width: 4.4,
                                                      height: 4.4,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 1.5, 0, 1.5),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF5365C),
                                                    ),
                                                    child: Container(
                                                      width: 10.2,
                                                      height: 1.5,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Tables',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1.7),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 16,
                                      height: 15.3,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 28),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 0, 19),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x1A000000),
                            ),
                            child: Container(
                              width: 202,
                              height: 1,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'DOCUMENTATION',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0xFF8898AA),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2.1, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 15.9,
                                      height: 15.9,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Getting started',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 26),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2.3, 0, 1.7),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 15.9,
                                      height: 15.1,
                                      child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Foundation',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 118,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                    width: 32,
                                    height: 32,
                                    child:
                                    SizedBox(
                                      width: 14.5,
                                      height: 16,
                                      /*child: SvgPicture.network(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      'Components',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
*/
 */
