import 'package:flutter/material.dart';
import 'package:quran_app/Utils/constants.dart';

class NameofAllah extends StatefulWidget {
  const NameofAllah({Key? key}) : super(key: key);

  @override
  State<NameofAllah> createState() => _NameofAllahState();
}

class _NameofAllahState extends State<NameofAllah> {
  static const _nameofAllah = [
    'الرَّحْمَنُ',
    'الرَّحِيمُ',
    'الْمَلِكُ',
    'الْقُدُّوسُ',
    'السَّلاَمُ',
    'الْمُؤْمِنُ',
    'الْمُهَيْمِنُ',
    'الْعَزِيزُ',
    'الْجَبَّارُ',
    'الْمُتَكَبِّر',
    'الْخَالِقُ',
    'الْبَارِئُ',
    'الْمُصَوِّرُ',
    'الْغَفَّارُ',
    'الْقَهَّارُ',
    'الْوَهَّابُ',
    'الرَّزَّاقُ',
    'الْفَتَّاحُ',
    'اَلْعَلِيْمُ',
    'الْقَابِضُ',
    'الْبَاسِطُ',
    'الْخَافِضُ',
    'الرَّافِعُ',
    'الْمُعِزُّ',
    'ٱلْمُذِلُّ',
    'السَّمِيعُ',
    'الْبَصِيرُ',
    'الْحَكَمُ',
    'الْعَدْلُ',
    'اللَّطِيفُ',
    'الْخَبِيرُ',
    'الْحَلِيمُ',
    'الْعَظِيمُ',
    'الْغَفُور',
    'الشَّكُورُ',
    'الْعَلِيُّ',
    'الْكَبِيرُ',
    'الْحَفِيظُ',
    'المُقيِت',
    'الْحسِيبُ',
    'الْجَلِيلُ',
    'الْكَرِيمُ',
    'الرَّقِيبُ',
    'ٱلْمُجِيبُ',
    'الْوَاسِعُ',
    'الْحَكِيمُ',
    'الْوَدُودُ',
    'الْمَجِيدُ',
    'الْبَاعِثُ',
    'الشَّهِيدُ',
    'الْحَقُ',
    'الْوَكِيلُ',
    'الْقَوِيُ',
    'الْمَتِينُ',
    'الْوَلِيُّ',
    'الْحَمِيدُ',
    'الْمُحْصِي',
    'الْمُبْدِئُ',
    'ٱلْمُعِيدُ',
    'الْمُحْيِي',
    'اَلْمُمِيتُ',
    'الْحَيُّ',
    'الْقَيُّومُ',
    'الْوَاجِدُ',
    'الْمَاجِدُ',
    'الْواحِدُ',
    'اَلاَحَدُ',
    'الصَّمَدُ',
    'الْقَادِرُ',
    'الْمُقْتَدِرُ',
    'الْمُقَدِّمُ',
    'الْمُؤَخِّرُ	',
    'الأوَّلُ',
    'الآخِرُ',
    'الظَّاهِرُ',
    'الْبَاطِنُ',
    'الْوَالِي',
    'الْمُتَعَالِي',
    'الْبَرُّ',
    'التَّوَابُ',
    'الْمُنْتَقِمُ',
    'العَفُوُ',
    'الرَّؤُوفُ',
    'َمَالِكُ ٱلْمُلْكُ',
    'ذُوالْجَلاَلِ وَالإكْرَامِ',
    'الْمُقْسِطُ',
    'الْجَامِعُ',
    'ٱلْغَنيُّ',
    'ٱلْمُغْنِيُّ',
    'اَلْمَانِعُ',
    'الضَّارَ',
    'النَّافِعُ',
    'النُّورُ',
    'الْهَادِي',
    'الْبَدِيعُ',
    'اَلْبَاقِي',
    'الْوَارِثُ',
    'الرَّشِيدُ',
    'الصَّبُورُ',
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
            child: gridNames(),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
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
        "NAME OF ALLAH",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w800,
          color: primayColor,
        ),
      ),
    );
  }

  Widget gridNames() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: _nameofAllah.length,
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
                        _nameofAllah[index],
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
                              image:
                                  AssetImage("assets/images/cornerbottom.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
