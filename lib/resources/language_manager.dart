enum LanguageType{
  ENGLISH,
  URDU
}

const String ENGLISH = "en";
const String ARABIC = "ar";

extension LanguageTypeExtension on LanguageType{

  String getValue(){
    switch(this){

      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.URDU:
        return ARABIC;
    }

  }
}