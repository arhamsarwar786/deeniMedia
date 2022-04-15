// To parse this JSON data, do
//
//     final surat = suratFromJson(jsondynamic);

import 'dart:convert';

Surat suratFromJson(dynamic str) => Surat.fromJson(json.decode(str));

dynamic suratToJson(Surat data) => json.encode(data.toJson());

class Surat {
    Surat({
        this.verses,
        this.pagination,
    });

    List<Verse>? verses;
    Pagination? pagination;

    factory Surat.fromJson(Map<dynamic, dynamic> json) => Surat(
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "verses": List<dynamic>.from(verses!.map((x) => x.toJson())),
        "pagination": pagination!.toJson(),
    };
}

class Pagination {
    Pagination({
        this.currentPage,
        this.nextPage,
        this.prevPage,
        this.totalPages,
        this.totalCount,
    });

    dynamic currentPage;
    dynamic nextPage;
    dynamic prevPage;
    dynamic totalPages;
    dynamic totalCount;

    factory Pagination.fromJson(Map<dynamic, dynamic> json) => Pagination(
        currentPage: json["current_page"],
        nextPage: json["next_page"],
        prevPage: json["prev_page"],
        totalPages: json["total_pages"],
        totalCount: json["total_count"],
    );

    Map<dynamic, dynamic> toJson() => {
        "current_page": currentPage,
        "next_page": nextPage,
        "prev_page": prevPage,
        "total_pages": totalPages,
        "total_count": totalCount,
    };
}

class Verse {
    Verse({
        this.id,
        this.verseNumber,
        this.chapterId,
        this.verseKey,
        this.textIndopak,
        this.juzNumber,
        this.hizbNumber,
        this.rubElHizbNumber,
        this.sajdahNumber,
        this.pageNumber,
        this.sajdah,
        this.textMadani,
        this.words,
        this.audio,
        this.translations,
    });

    dynamic id;
    dynamic verseNumber;
    dynamic chapterId;
    dynamic verseKey;
    dynamic textIndopak;
    dynamic juzNumber;
    dynamic hizbNumber;
    dynamic rubElHizbNumber;
    dynamic sajdahNumber;
    dynamic pageNumber;
    dynamic sajdah;
    dynamic textMadani;
    List<Word>? words;
    VerseAudio? audio;
    List<TranslationElement>? translations;

    factory Verse.fromJson(Map<dynamic, dynamic> json) => Verse(
        id: json["id"],
        verseNumber: json["verse_number"],
        chapterId: json["chapter_id"],
        verseKey: json["verse_key"],
        textIndopak: json["text_indopak"],
        juzNumber: json["juz_number"],
        hizbNumber: json["hizb_number"],
        rubElHizbNumber: json["rub_el_hizb_number"],
        sajdahNumber: json["sajdah_number"],
        pageNumber: json["page_number"],
        sajdah: json["sajdah"],
        textMadani: json["text_madani"],
        words: List<Word>.from(json["words"].map((x) => Word.fromJson(x))),
        audio: VerseAudio.fromJson(json["audio"]),
        translations: List<TranslationElement>.from(json["translations"].map((x) => TranslationElement.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "verse_number": verseNumber,
        "chapter_id": chapterId,
        "verse_key": verseKey,
        "text_indopak": textIndopak,
        "juz_number": juzNumber,
        "hizb_number": hizbNumber,
        "rub_el_hizb_number": rubElHizbNumber,
        "sajdah_number": sajdahNumber,
        "page_number": pageNumber,
        "sajdah": sajdah,
        "text_madani": textMadani,
        "words": List<dynamic>.from(words!.map((x) => x.toJson())),
        "audio": audio!.toJson(),
        "translations": List<dynamic>.from(translations!.map((x) => x.toJson())),
    };
}

class VerseAudio {
    VerseAudio({
        this.url,
        this.duration,
        this.segments,
        this.format,
    });

    dynamic url;
    dynamic duration;
    List<List<dynamic>>? segments;
    dynamic format;

    factory VerseAudio.fromJson(Map<dynamic, dynamic> json) => VerseAudio(
        url: json["url"],
        duration: json["duration"],
        segments: List<List<dynamic>>.from(json["segments"].map((x) => List<dynamic>.from(x.map((x) => x)))),
        format: json["format"],
    );

    Map<dynamic, dynamic> toJson() => {
        "url": url,
        "duration": duration,
        "segments": List<dynamic>.from(segments!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "format": format,
    };
}

class TranslationElement {
    TranslationElement({
        this.id,
        this.languageName,
        this.text,
        this.resourceName,
        this.resourceId,
    });

    dynamic id;
    LanguageName? languageName;
    dynamic text;
    dynamic resourceName;
    dynamic resourceId;

    factory TranslationElement.fromJson(Map<dynamic, dynamic> json) => TranslationElement(
        id: json["id"],
        languageName: languageNameValues.map![json["language_name"]],
        text: json["text"],
        resourceName: json["resource_name"],
        resourceId: json["resource_id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "language_name": languageNameValues.reverse[languageName],
        "text": text,
        "resource_name": resourceName,
        "resource_id": resourceId,
    };
}

enum LanguageName { URDU, ENGLISH }

final languageNameValues = EnumValues({
    "english": LanguageName.ENGLISH,
    "urdu": LanguageName.URDU
});

class Word {
    Word({
        this.id,
        this.position,
        this.textIndopak,
        this.verseKey,
        this.lineNumber,
        this.pageNumber,
        this.code,
        this.className,
        this.textMadani,
        this.charType,
        this.transliteration,
        this.translation,
        this.audio,
    });

    dynamic id;
    dynamic position;
    dynamic textIndopak;
    dynamic verseKey;
    dynamic lineNumber;
    dynamic pageNumber;
    dynamic code;
    ClassName? className;
    dynamic textMadani;
    CharType? charType;
    TransliterationClass? transliteration;
    TransliterationClass? translation;
    WordAudio? audio;

    factory Word.fromJson(Map<dynamic, dynamic> json) => Word(
        id: json["id"],
        position: json["position"],
        textIndopak: json["text_indopak"],
        verseKey: json["verse_key"],
        lineNumber: json["line_number"],
        pageNumber: json["page_number"],
        code: json["code"],
        className: classNameValues.map![json["class_name"]],
        textMadani: json["text_madani"],
        charType: charTypeValues.map![json["char_type"]],
        transliteration: TransliterationClass.fromJson(json["transliteration"]),
        translation: TransliterationClass.fromJson(json["translation"]),
        audio: WordAudio.fromJson(json["audio"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "position": position,
        "text_indopak": textIndopak,
        "verse_key": verseKey,
        "line_number": lineNumber,
        "page_number": pageNumber,
        "code": code,
        "class_name": classNameValues.reverse[className],
        "text_madani": textMadani,
        "char_type": charTypeValues.reverse[charType],
        "transliteration": transliteration!.toJson(),
        "translation": translation!.toJson(),
        "audio": audio!.toJson(),
    };
}

class WordAudio {
    WordAudio({
        this.url,
    });

    dynamic url;

    factory WordAudio.fromJson(Map<dynamic, dynamic> json) => WordAudio(
        url: json["url"] == null ? null : json["url"],
    );

    Map<dynamic, dynamic> toJson() => {
        "url": url == null ? null : url,
    };
}

enum CharType { WORD, END }

final charTypeValues = EnumValues({
    "end": CharType.END,
    "word": CharType.WORD
});

enum ClassName { P1 }

final classNameValues = EnumValues({
    "p1": ClassName.P1
});

class TransliterationClass {
    TransliterationClass({
        this.languageName,
        this.text,
    });

    LanguageName? languageName;
    dynamic text;

    factory TransliterationClass.fromJson(Map<dynamic, dynamic> json) => TransliterationClass(
        languageName: languageNameValues.map![json["language_name"]],
        text: json["text"] == null ? null : json["text"],
    );

    Map<dynamic, dynamic> toJson() => {
        "language_name": languageNameValues.reverse[languageName],
        "text": text == null ? null : text,
    };
}

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
