// To parse this JSON data, do
//
//     final quranKareemUrduModel = quranKareemUrduModelFromJson(jsonString);

import 'dart:convert';

List<QuranKareemUrduModel> quranKareemUrduModelFromJson(String str) => List<QuranKareemUrduModel>.from(json.decode(str).map((x) => QuranKareemUrduModel.fromJson(x)));

String quranKareemUrduModelToJson(List<QuranKareemUrduModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuranKareemUrduModel {
    QuranKareemUrduModel({
        this.id,
        this.name,
        this.translation,
        this.type,
        this.totalVerses,
        this.verses,
    });

    int? id;
    String? name;
    String? translation;
    Type? type;
    int? totalVerses;
    List<Verse>? verses;

    factory QuranKareemUrduModel.fromJson(Map<String, dynamic> json) => QuranKareemUrduModel(
        id: json["id"],
        name: json["name"],
        translation: json["translation"],
        type: typeValues.map[json["type"]],
        totalVerses: json["total_verses"],
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "translation": translation,
        "type": typeValues.reverse[type],
        "total_verses": totalVerses,
        "verses": List<dynamic>.from(verses!.map((x) => x.toJson())),
    };
}

enum Type { MECCAN, MEDINAN }

final typeValues = EnumValues({
    "meccan": Type.MECCAN,
    "medinan": Type.MEDINAN
});

class Verse {
    Verse({
        this.id,
        this.sura,
        this.aya,
        this.arabicText,
        this.translation,
        this.footnotes,
    });

    String? id;
    String? sura;
    String? aya;
    String? arabicText;
    String? translation;
    String? footnotes;

    factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        id: json["id"],
        sura: json["sura"],
        aya: json["aya"],
        arabicText: json["arabic_text"],
        translation: json["translation"],
        footnotes: json["footnotes"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sura": sura,
        "aya": aya,
        "arabic_text": arabicText,
        "translation": translation,
        "footnotes": footnotes,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap!;
    }
}
