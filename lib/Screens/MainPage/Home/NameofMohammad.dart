import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class NameofMohammad extends StatefulWidget {
  const NameofMohammad({Key? key}) : super(key: key);

  @override
  State<NameofMohammad> createState() => _NameofMohammadState();
}

class _NameofMohammadState extends State<NameofMohammad> {
  static const nameOfMuhammad = [
    'مُحَمَّدٌ',
    'أَحْمَدٌ',
    'حَامِدٌ',
    'مَحْمودٌ',
    'أَحِيدُ',
    'وَحِيدٌ',
    'مَاحٍ',
    'حَاشِرٌ',
    'عَاقِبٌ',
    'طَهَ',
    'يَسٓ',
    'طَاهِرٌ',
    'مُطَهَّرٌ',
    'طَيِّبٌ',
    'سَيِّدٌ',
    'رَسُولٌ',
    'نَبِيٌّ',
    'رَسُولُ الرَّحْمَةِ',
    'قَيِّمٌ',
    'جَامِعٌ',
    'مُقْتَفٍ',
    'مُقَفِّى',
    'رَسُولُ الْمَلَاحِمِ',
    'رَسُولُ الرَّاحَةِ',
    'كَامِلٌ',
    'إِكْلِيلٌ',
    'مُدَّثِّرٌ',
    'مُزَّمِّلٌ',
    'عَبْدُ اللهِ',
    'حَبِيبُ اللهِ',
    'صَفِيُّ اللهِ',
    'نَجِّيُّ اللهِ',
    'كَلِيمُ اللهِ',
    'خَاتِمُ الْأَنْبِيَاءِ',
    'خَاتِمُ الرُّسُلِ',
    'مُحْيٍ',
    'مُنْجٍ',
    'مُذَكِّرٌ',
    'نَاصِرٌ',
    'مَنْصُورٌ',
    'نَبِيُّ الرَّحْمَةِ',
    'نَبِيُّ التَّوْبَةِ',
    'حَرِيصٌ عَلَيْكُمْ',
    'مَعْلُومٌ',
    'شَهِيرٌ',
    'شَاهِدٌ',
    'شَهِيدٌ',
    'مَشْهُودٌ',
    'بَشِيرٌ',
    'مُبَشِّرٌ',
    'نَذِيرٌ',
    'مُنْذِرٌ',
    'نُورٌ',
    'سِرَاجٌ',
    'مِصْبَاحٌ',
    'هُدَىً',
    'مَهْدِيٌ',
    'مُنِيرٌ',
    'دَاعٍ',
    'مَدْعُوٌّ',
    'مُجِيبٌ',
    'مُجَابٌ',
    'حَفِيٌّ',
    'عَفُوٌّ',
    'وَلِيٌّ',
    'حَقٌ',
    'قَوِيٌّ',
    'أَمِينٌ',
    'مَأْمُونٌ',
    'كَرِيمٌ',
    'مُكَرَّمٌ',
    'مَكِينٌ',
    'مَتِينٌ',
    'مُبِينٌ',
    'مُؤَمِّلٌ',
    'وَصُولٌ',
    'ذُو قُوَّةٍ',
    'بُشْرَى',
    'نِعْمَةُ اللهِ',
    'هَدِيَّةُ اللهِ',
    'عُرْوَةٌ وُثْقَ',
    'صِرَاطُ اللهِ',
    'ذِكْرُ اللهِ',
    'سَيْفُ اللهِ',
    'حِزْبُ اللهِ',
    'مُصْطَفَى',
    'مُجْتَبَى',
    'مُنْتَقَ',
    'أَبُو الْقَاسِمِ',
    'أَبُو الطَّاهِرِ',
    'شَفِيعٌ',
    'صَالِحٌ',
    'صَادِقٌ',
    'سَيِّدُ الْمُرْسَلِينَ',
    'إِمَامُ الْمُتَّقِينَ',
    'وَكِيلٌ',
    'مُتَوَكِّلٌ',
    'رُوحُ الْقُدُسِ',
    'رُوحُ الْحَقِّ',
    'عَلَمُ الْإِيمَانِ',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
          body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                color: primayColor, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: gridNames(context, size),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(){
    return AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/BgImage.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 20,
          color: primayColor,
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          "NAME OF MOHAMMAD",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: primayColor,
          ),
        ),
      );
  }

  Widget gridNames(BuildContext context, Size size) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: nameOfMuhammad.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      nameOfMuhammad[index],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/cornertop.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/cornerbottom.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
