import 'package:flutter/material.dart';


class LandingPage extends StatefulWidget {


  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  static const kExpandedHeight = 180.0;

  @override
  void initState() {  
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.black;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  static const _sub = [
    'آج کے دن کی آیت',
    'آج کے دن کی دعا',
  ];
  static const _data = [
    'وَحَفِنَٰهَا مِن كُلِّ شَطَٰ رَّجِيمٍ',
    'اَللّٰهُمَّ اِنَّی لَکَ صُمْتُ وَبِکَ اٰمَنْتُ وَعَلَيْکَ تَوَکَّلْتُ وَعَلٰی رِزْقِکَ اَفْطَرْتُ',
  ];

  static const _data1 = [
    'اور اسے ہر مردود شیطان سے محفوظ رکھا ہے.',
    '’’اے اللہ!میں نے تیری خاطر روزہ رکھا اور تیرے اوپر ایمان لایا اور تجھ پر بھروسہ کیا اورتیرے رزق سے اسے کھول رہا ہوں۔‘',
  ];

  static const _sub1 = [
    'القرآن',
    'کلمے',
    'نماز',
    'دعائیں',
  ];
  static const _img = [
    'assets/images/Quran.jpg',
    'assets/images/Dua.jpg',
  ];
  static const _img1 = [
    'assets/images/Quran1.jpg',
    'assets/images/kalma sharif.jpg',
    'assets/images/Nimaz1.jpg',
    'assets/images/Duwa1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 244, 248),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.info_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
              backgroundColor: Colors.black87,
              // show and hide SliverAppBar Title
              title: _isSliverAppBarExpanded
                  ? Column( 
                      children: [
                        Text(
                          'Remaining Time of Isha',
                          style: TextStyle(color: _textColor, fontSize: 10),
                        ),
                        Text(
                          '05hrs, 40mins',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    )
                  : null,
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: kExpandedHeight,
              // show and hide FlexibleSpaceBar title
              flexibleSpace: _isSliverAppBarExpanded
                  ? null
                  : FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Container(
                            height: 210,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/top.jpg",
                                    ),
                                    colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.8),
                                      BlendMode.darken,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            color: Colors.black54,
                            height: 210,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/islam1.png"))),
                                          ),
                                          Text(
                                            "13,Ramadan-ul-Mubarak,1443AH",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Thu 14 April 2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "GMT:5.0, Height:702 feet",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                          ),
                                          
                                          Text(
                                            "Sohwardi Rd,Lahore,Punjab,Pakistan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),                  
                  child: Card(                  
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/Praylogo.png"),
                      ),
                      title: Text('Namaz',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          )),
                      subtitle: Text(
                        "Times",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/Qiblalogo.png"),
                      ),
                      title: Text('Qibla',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          )),
                      subtitle: Text(
                        "Direction ",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                      trailing: Icon(Icons.arrow_forward_sharp),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _sub.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 10, right: 10),
                        child: FittedBox(
                            child: Card(
                          elevation: 6,
                          child: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black54.withOpacity(0.2),
                                      BlendMode.exclusion),
                                  image: AssetImage(_img[index]),
                                  fit: BoxFit.cover,
                                )),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.black45,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15, top: 0, bottom: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                              
                                      Text(
                                        _data[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        _data1[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )));
                  },
                ),
                SizedBox(height: 30,),
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),                  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    // crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                 children: [
                  //  Column(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       InkWell(
                  //           child: CircleAvatar(
                  //         radius: 50,
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //               image: DecorationImage(
                  //             colorFilter: new ColorFilter.mode(
                  //                 Colors.black54.withOpacity(0.9),
                  //                 BlendMode.exclusion),
                  //             image: AssetImage(_img1[index]),
                  //             fit: BoxFit.fitHeight,
                  //           )),
                  //         ),
                  //       )),
                  //       SizedBox(
                  //         height: 5,
                  //       ),
                  //       Text(
                  //         "القرآن",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 24,
                  //             fontWeight: FontWeight.w700),
                  //       ),
                  //     ],
                  //   ),
                 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            child: CircleAvatar(
                          radius: 50,
                          child: Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                              colorFilter: new ColorFilter.mode(
                                  Colors.black54.withOpacity(0.9),
                                  BlendMode.exclusion),
                              image: AssetImage("assets/images/logoCrop.jpeg"),
                              fit: BoxFit.fill,
                            )),
                          ),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "القرآن",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            child: CircleAvatar(
                          radius: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                  
                              borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                              colorFilter:  ColorFilter.mode(
                                  Colors.black54.withOpacity(0.9),
                                  BlendMode.exclusion),
                              image: AssetImage("assets/images/dua.jpg"),
                              fit: BoxFit.fill,
                            )),
                          ),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'دعائیں/کلمے',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            child: CircleAvatar(
                          radius: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                              colorFilter: new ColorFilter.mode(
                                  Colors.black54.withOpacity(0.9),
                                  BlendMode.exclusion),
                              image: AssetImage("assets/images/namaz.png"),
                              fit: BoxFit.fill,
                            )),
                          ),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'نماز',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                 
                 ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}