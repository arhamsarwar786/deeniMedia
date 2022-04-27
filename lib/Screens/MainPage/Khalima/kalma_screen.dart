import 'package:flutter/material.dart';
import 'package:quran_app/Screens/MainPage/main_screen.dart';
import 'package:quran_app/widgets.dart';

import '../../../Utils/constants.dart';
import 'kalma_view.dart';

class KhailmaScreen extends StatelessWidget {
  const KhailmaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _name = [
      'FIRST KALMA',
      'SECOND KALMA',
      'THIRD KALMA',
      'FORTH KALMA',
      'FIFTH KALMA',
      'SIXTH KALMA',
    ];
    const _name1 = [
      'پہلا کلمہ',
      'دوسرا کلمہ',
      'تیسرا کلمہ',
      'جوتھا کلمہ',
      'پانچواں کلمہ',
      'چھٹا کلمہ',
    ];
    const kalma_arabic = [
      'لَا إِلَٰهَ إِلَّا ٱللَّٰهُ مُحَمَّدٌ رَسُولُ ٱللَّٰهِ',
      'اَشْهَدُ اَنْ لَّآ اِلٰهَ اِلَّا اللهُ وَحْدَہٗ لَاشَرِيْكَ لَہٗ وَاَشْهَدُ اَنَّ مُحَمَّدًا عَبْدُهٗ وَرَسُولُہٗ',
      'سُبْحَان اللهِ وَالْحَمْدُلِلّهِ وَلا إِلهَ إِلّااللّهُ وَاللّهُ أكْبَرُ وَلا حَوْلَ وَلاَ قُوَّةَ إِلَّا بِاللّهِ الْعَلِيِّ الْعَظِيْم',
      'لَآ اِلٰهَ اِلَّا اللهُ وَحْدَهٗ لَا شَرِيْكَ لَهٗ لَهُ الْمُلْكُ وَ لَهُ الْحَمْدُ يُحْىٖ وَ يُمِيْتُ وَ هُوَحَیٌّ لَّا يَمُوْتُ اَبَدًا اَبَدًاؕ ذُو الْجَلَالِ وَالْاِكْرَامِؕ بِيَدِهِ الْخَيْرُؕ وَهُوَ عَلٰى كُلِّ شیْ ٍٔ قَدِیْرٌؕ',
      'اَسْتَغْفِرُ اللهِ رَبِّىْ مِنْ كُلِِّ ذَنْۢبٍ اَذْنَبْتُهٗ عَمَدًا اَوْ خَطَا ًٔ سِرًّا اَوْ عَلَانِيَةً وَّاَتُوْبُ اِلَيْهِ مِنَ الذَّنْۢبِ الَّذِیْٓ اَعْلَمُ وَ مِنَ الذَّنْۢبِ الَّذِىْ لَآ اَعْلَمُ اِنَّكَ اَنْتَ عَلَّامُ الْغُيُوْبِ وَ سَتَّارُ الْعُيُوْبِ و َغَفَّارُ الذُّنُوْبِ وَ لَا حَوْلَ وَلَا قُوَّةَ اِلَّا بِاللهِ الْعَلِىِِّ الْعَظِيْمِؕ',
      'اَللّٰهُمَّ اِنِّیْٓ اَعُوْذُ بِكَ مِنْ اَنْ اُشْرِكَ بِكَ شَيْئًا وَّاَنَآ اَعْلَمُ بِهٖ وَ اَسْتَغْفِرُكَ لِمَا لَآ اَعْلَمُ بِهٖ تُبْتُ عَنْهُ وَ تَبَرَّأْتُ مِنَ الْكُفْرِ وَ الشِّرْكِ وَ الْكِذْبِ وَ الْغِيْبَةِ وَ الْبِدْعَةِ وَ النَّمِيْمَةِ وَ الْفَوَاحِشِ وَ الْبُهْتَانِ وَ الْمَعَاصِىْ كُلِِّهَا وَ اَسْلَمْتُ وَ اَقُوْلُ لَآ اِلٰهَ اِلَّا اللهُ مُحَمَّدٌ رَّسُوْلُ اللهِؕ',
    ];
    const kalma_urdu = [
      'اللہ کے سوا کوئی عبادت کے لائق نہیں محد(ﷺ) اللہ کے رسول ہیں ۔',
      'میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اس کا کوئی شریک نہیں ، اور میں گواہی دیتا ہوں کہ بیشک محمد (ﷺ)اس کے بندے اور رسول ہیں',
      'اللہ کی ذات پاک ہے اور سب تعریف اللہ ہی کیلئے ہے اور اللہ کے سوا کوئی معبود نہیں اور اللہ بہت بڑا ہے گناہوں سے بچنے کی طاقت اور نیک کام کرنے کی توفیق اللہ ہی کی طرف سے ہے جو بہت بلند اور عظمت والا ہے۔',
      'اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اسکا کوئی شریک نہیں اس کی بادشاہی ہے اور اس کے لیے تمام تعریفے ہے۔ وہ زندہ کرتا ہے اور وہ مرواتا ہے۔ اور وہ ہمیشہ کیلئے زندہ ہے وہ مرے گا نہیں عظمت اور بزرگی والا ہے ، بہتری اس کے ہاتھ میں ہے اور ہر چیز پر قادر ہے',
      'معافی مانگتا ہو اے میرے اللہ ہر گناہ سے جو میں نے جان بوجھ کر یا بھول کر کیا ہے، در پردہ یا کھلم کھلا اور میں توبہ کرتا ہوں اسکے حضور میں اس گناہ سے جو مجھے معلوم ہے اور اس گناہ سے جو مجھے معلوم بے شک تو غیبوں کو جاننے والا اور عیبوں کو چھپانے والا ہے اور گناہوں سے بخشنے والا ہے اور گناہوں سے بچنے کی طاقت اور نیک کام کرنے کی طاقت اللہ ہی کی طرف سے ہے۔ جو عالی شان اور عظمت والا ہے۔',
      'اے اللہ میں پناہ مانگتا ہو اس بات سے کہ میں کسی شے کو تیرا شریک بناؤں اور مجھے اس کا علم ہو اور میں بخشش مانگتا ہوں تجھ سے اس (گناہ) کی جو میں جانتا نہیں ہو اور میں نے اس سے توبہ کی اور بیزار ہوا کفر سے اور شرک سے اور جھوٹ سے اور غیبت سے اور بدعت سے اور چغلی سے اور بے حیائی سے، اور بہتان سے اور تمام گناہوں سے اور میں ایمان لایا اور میں کہتا ہو کہ اللہ کے سوا کوئی معبود نہیں اور محمد ﷺ اللہ کے رسول ہے',
    ];

    var _navigationSc = [
      const KalmaView(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: mainScreenAppBarPush(context, "KALIMA"),
      body: Stack(
        alignment: Alignment.center,
        children: [
          bgImage(context, size),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    itemCount: _name.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.90,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 25,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => _navigationSc[index]));
                        },
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner topleft.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner topright.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          _name1[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          _name[index],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner bottomleft.png"))),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/Kalma corner bottomright.png"))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
