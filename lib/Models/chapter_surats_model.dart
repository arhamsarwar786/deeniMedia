// To parse this JSON data, do
//
//     final chapterSuratsModel = chapterSuratsModelFromJson(jsondynamic);

import 'dart:convert';

ChapterSuratsModel chapterSuratsModelFromJson(dynamic str) => ChapterSuratsModel.fromJson(json.decode(str));

dynamic chapterSuratsModelToJson(ChapterSuratsModel data) => json.encode(data.toJson());

class ChapterSuratsModel {
    ChapterSuratsModel({
        this.chapters,
    });

    List<Chapter>? chapters;

    factory ChapterSuratsModel.fromJson(Map<dynamic, dynamic> json) => ChapterSuratsModel(
        chapters: List<Chapter>.from(json["chapters"].map((x) => Chapter.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "chapters": List<dynamic>.from(chapters!.map((x) => x.toJson())),
    };
}

class Chapter {
    Chapter({
        this.id,
        this.revelationPlace,
        this.revelationOrder,
        this.bismillahPre,
        this.nameSimple,
        this.nameComplex,
        this.nameArabic,
        this.versesCount,
        this.pages,
        this.chapterNumber,
        this.translatedName,
    });

    dynamic id;
    RevelationPlace? revelationPlace;
    dynamic revelationOrder;
    bool? bismillahPre;
    dynamic nameSimple;
    dynamic nameComplex;
    dynamic nameArabic;
    dynamic versesCount;
    List<dynamic>? pages;
    dynamic chapterNumber;
    TranslatedName? translatedName;

    factory Chapter.fromJson(Map<dynamic, dynamic> json) => Chapter(
        id: json["id"],
        revelationPlace: revelationPlaceValues.map![json["revelation_place"]],
        revelationOrder: json["revelation_order"],
        bismillahPre: json["bismillah_pre"],
        nameSimple: json["name_simple"],
        nameComplex: json["name_complex"],
        nameArabic: json["name_arabic"],
        versesCount: json["verses_count"],
        pages: List<dynamic>.from(json["pages"].map((x) => x)),
        chapterNumber: json["chapter_number"],
        translatedName: TranslatedName.fromJson(json["translated_name"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "revelation_place": revelationPlaceValues.reverse[revelationPlace],
        "revelation_order": revelationOrder,
        "bismillah_pre": bismillahPre,
        "name_simple": nameSimple,
        "name_complex": nameComplex,
        "name_arabic": nameArabic,
        "verses_count": versesCount,
        "pages": List<dynamic>.from(pages!.map((x) => x)),
        "chapter_number": chapterNumber,
        "translated_name": translatedName!.toJson(),
    };
}

enum RevelationPlace { MAKKAH, MADINAH }

final revelationPlaceValues = EnumValues({
    "madinah": RevelationPlace.MADINAH,
    "makkah": RevelationPlace.MAKKAH
});

class TranslatedName {
    TranslatedName({
        this.languageName,
        this.name,
    });

    LanguageName? languageName;
    dynamic name;

    factory TranslatedName.fromJson(Map<dynamic, dynamic> json) => TranslatedName(
        languageName: languageNameValues.map![json["language_name"]],
        name: json["name"],
    );

    Map<dynamic, dynamic> toJson() => {
        "language_name": languageNameValues.reverse[languageName],
        "name": name,
    };
}

enum LanguageName { ENGLISH }

final languageNameValues = EnumValues({
    "english": LanguageName.ENGLISH
});

class EnumValues<T> {
    Map<dynamic, T>? map;
    Map<T, dynamic>? reverseMap;

    EnumValues(this.map);

    Map<T, dynamic> get reverse {
        if (reverseMap == null) {
            reverseMap = map!.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap!;
    }
}
