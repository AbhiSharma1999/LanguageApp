class Language{
  final int id;
  final String name;
  final String languagecode;
  final String countrycode;

  Language(this.id, this.name,  this.languagecode,this.countrycode);

  static List<Language> languageList = [Language(0,'Latine','la','AN'),
                                        Language(1,'English','en','US'),
                                        Language(2,'हिन्दी','hi','IN'),
                                        Language(3,'संस्कृत','sa','IN'),
                                        Language(4,'русский','ru','RU'),
                                        Language(5,'Deutsche','de','DE'),
                                        Language(6,'español','es','ES'),
                                        Language(7,'français','fr','FR'),
                                        Language(8,'עִברִית','he','IL'),
                                        Language(9,'اردو','ur','PK'),
                                        Language(10,'عربى','ar','SA'),
                                        Language(11,'中文','zh','HK'),
                                        Language(12,'日本人','ja','JP'),
                                        ];


}