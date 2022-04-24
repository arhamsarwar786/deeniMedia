import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Provider/main_provider.dart';

import '../../../Models/quran_kareem_urdu_model.dart';

class SuratView extends StatelessWidget {
  const SuratView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<MyProvider>(context, listen: false);
    // QuranKareemUrduModel? quran = provider.fetchTransSurat();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      backgroundColor: Color.fromARGB(255, 185, 185, 185),
      appBar: AppBar(
        title: Text("Translation"),
      ),
      body: SingleChildScrollView(
        child:Consumer<MyProvider>(
          builder: (context,provider,child) {
            QuranKareemUrduModel? quran = provider.fetchTransSurat();
            return Column(
              children: [
                Container(
                  color: Colors.white,
                  width: size.width,
                  alignment: Alignment.center,
                  height: 50,
                  margin:const EdgeInsets.only(bottom: 5),
                  padding:const EdgeInsets.all(5),
                  child: Text(quran.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: quran.verses!.length,
                    itemBuilder: (context, index) {
                      var data = quran.verses![index];
                      return Card(
                        child: Stack(children: [
                          Container(
                            height: 300,
                            width: size.width,
                            decoration: BoxDecoration(
                              
                                image: DecorationImage(
                                    image: AssetImage("assets/images/bg.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Center(
                              child: Container(
                                padding: EdgeInsets.all(50),
                                child: Text(
                            data.arabicText!,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                              )),

                                 Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 100,left: 50),
                                child: Text(
                            data.translation!,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                          ),
                              )),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              child: Image.asset(
                                'assets/images/border.png',
                                height: 80,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: RotatedBox(
                              quarterTurns: 2,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/border.png',
                                  height: 80,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      );
                    }),
              ],
            );
          }
        ),
      ),
    );
  }
}
