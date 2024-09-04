var codes = {'Afar': 'aa', 'Abkhazian': 'ab', 'Avestan': 'ae', 'Afrikaans': 'af', 'Akan': 'ak', 'Amharic': 'am', 'Aragonese': 'an', 'Arabic': 'ar', 'Arabic (U.A.E.)': 'ar-ae', 'Arabic (Bahrain)': 'ar-bh', 'Arabic (Algeria)': 'ar-dz', 'Arabic (Egypt)': 'ar-eg', 'Arabic (Iraq)': 'ar-iq', 'Arabic (Jordan)': 'ar-jo', 'Arabic (Kuwait)': 'ar-kw', 'Arabic (Lebanon)': 'ar-lb', 'Arabic (Libya)': 'ar-ly', 'Arabic (Morocco)': 'ar-ma', 'Arabic (Oman)': 'ar-om', 'Arabic (Qatar)': 'ar-qa', 'Arabic (Saudi Arabia)': 'ar-sa', 'Arabic (Syria)': 'ar-sy', 'Arabic (Tunisia)': 'ar-tn', 'Arabic (Yemen)': 'ar-ye', 'Assamese': 'as', 'Avaric': 'av', 'Aymara': 'ay', 'Azeri': 'az', 'Bashkir': 'ba', 'Belarusian': 'be', 'Bulgarian': 'bg', 'Bihari': 'bh', 'Bislama': 'bi', 'Bambara': 'bm', 'Bengali': 'bn', 'Tibetan': 'bo', 'Breton': 'br', 'Bosnian': 'bs', 'Catalan': 'ca', 'Chechen': 'ce', 'Chamorro': 'ch', 'Corsican': 'co', 'Cree': 'cr', 'Czech': 'cs', 'Church Slavonic': 'cu', 'Chuvash': 'cv', 'Welsh': 'cy', 'Danish': 'da', 'German': 'de', 'German (Austria)': 'de-at', 'German (Switzerland)': 'de-ch', 'German (Germany)': 'de-de', 'German (Liechtenstein)': 'de-li', 'German (Luxembourg)': 'de-lu', 'Divehi': 'dv', 'Bhutani': 'dz', 'Ewe': 'ee', 'Greek': 'el', 'English': 'en', 'English (Australia)': 'en', 'English (Belize)': 'en', 'English (Canada)': 'en', 'English (Caribbean)': 'en', 'English (United Kingdom)': 'en', 'English (Ireland)': 'en', 'English (Jamaica)': 'en', 'English (New Zealand)': 'en', 'English (Philippines)': 'en', 'English (Trinidad and Tobago)': 'en', 'English (United States)': 'en', 'English (South Africa)': 'en', 'English (Zimbabwe)': 'en', 'Esperanto': 'eo', 'Spanish': 'es', 'Spanish (Argentina)': 'es-ar', 'Spanish (Bolivia)': 'es-bo', 'Spanish (Chile)': 'es-cl', 'Spanish (Colombia)': 'es-co', 'Spanish (Costa Rica)': 'es-cr', 'Spanish (Dominican Republic)': 'es-do', 'Spanish (Ecuador)': 'es-ec', 'Spanish (Spain)': 'es-es', 'Spanish (Guatemala)': 'es-gt', 'Spanish (Honduras)': 'es-hn', 'Spanish (Mexico)': 'es-mx', 'Spanish (Nicaragua)': 'es-ni', 'Spanish (Panama)': 'es-pa', 'Spanish (Peru)': 'es-pe', 'Spanish (Puerto Rico)': 'es-pr', 'Spanish (Paraguay)': 'es-py', 'Spanish (El Salvador)': 'es-sv', 'Spanish (United States)': 'es-us', 'Spanish (Uruguay)': 'es-uy', 'Spanish (Venezuela)': 'es-ve', 'Estonian': 'et', 'Basque': 'eu', 'Farsi': 'fa', 'Fulah': 'ff', 'Finnish': 'fi', 'Fiji': 'fj', 'Faroese': 'fo', 'French': 'fr', 'French (Belgium)': 'fr-be', 'French (Canada)': 'fr-ca', 'French (Switzerland)': 'fr-ch', 'French (France)': 'fr-fr', 'French (Luxembourg)': 'fr-lu', 'French (Monaco)': 'fr-mc', 'Frisian': 'fy', 'Irish': 'ga', 'Gaelic': 'gd', 'Galician': 'gl', 'Guarani': 'gn', 'Gujarati': 'gu', 'Manx': 'gv', 'Hausa': 'ha', 'Hebrew': 'iw', 'Hindi': 'hi', 'Hiri Motu': 'ho', 'Croatian': 'hr', 'Croatian (Bosnia and Herzegovina)': 'hr-ba', 'Croatian (Croatia)': 'hr-hr', 'Haitian': 'ht', 'Hungarian': 'hu', 'Armenian': 'hy', 'Herero': 'hz', 'Interlingua': 'ia', 'Indonesian': 'in', 'Interlingue': 'ie', 'Igbo': 'ig', 'Sichuan Yi': 'ii', 'Inupiak': 'ik', 'Ido': 'io', 'Icelandic': 'is', 'Italian': 'it', 'Italian (Switzerland)': 'it-ch', 'Italian (Italy)': 'it-it', 'Inuktitut': 'iu', 'Japanese': 'ja', 'Yiddish': 'yi', 'Javanese': 'jw', 'Georgian': 'ka', 'Kongo': 'kg', 'Kikuyu': 'ki', 'Kuanyama': 'kj', 'Kazakh': 'kk', 'Greenlandic': 'kl', 'Cambodian': 'km', 'Kannada': 'kn', 'Korean': 'ko', 'Konkani': 'kok', 'Kanuri': 'kr', 'Kashmiri': 'ks', 'Kurdish': 'ku', 'Komi': 'kv', 'Cornish': 'kw', 'Kirghiz': 'ky', 'Kyrgyz': 'kz', 'Latin': 'la', 'Luxembourgish': 'lb', 'Ganda': 'lg', 'Limburgan': 'li', 'Lingala': 'ln', 'Laothian': 'lo', 'Slovenian': 'sl', 'Lithuanian': 'lt', 'Luba-Katanga': 'lu', 'Latvian': 'lv', 'Malagasy': 'mg', 'Marshallese': 'mh', 'Maori': 'mi', 'FYRO Macedonian': 'mk', 'Malayalam': 'ml', 'Mongolian': 'mn', 'Moldavian': 'mo', 'Marathi': 'mr', 'Malay': 'ms', 'Malay (Brunei Darussalam)': 'ms-bn', 'Malay (Malaysia)': 'ms-my', 'Maltese': 'mt', 'Burmese': 'my', 'Nauru': 'na', 'Norwegian (Bokmal)': 'nb', 'North Ndebele': 'nd', 'Nepali (India)': 'ne', 'Ndonga': 'ng', 'Dutch': 'nl', 'Dutch (Belgium)': 'nl-be', 'Dutch (Netherlands)': 'nl-nl', 'Norwegian (Nynorsk)': 'nn', 'Norwegian': 'no', 'South Ndebele': 'nr', 'Northern Sotho': 'ns', 'Navajo': 'nv', 'Chichewa': 'ny', 'Occitan': 'oc', 'Ojibwa': 'oj', '(Afan)/Oromoor/Oriya': 'om', 'Oriya': 'or', 'Ossetian': 'os', 'Punjabi': 'pa', 'Pali': 'pi', 'Polish': 'pl', 'Pashto/Pushto': 'ps', 'Portuguese': 'pt', 'Portuguese (Brazil)': 'pt-br', 'Portuguese (Portugal)': 'pt-pt', 'Quechua': 'qu', 'Quechua (Bolivia)': 'qu-bo', 'Quechua (Ecuador)': 'qu-ec', 'Quechua (Peru)': 'qu-pe', 'Rhaeto-Romanic': 'rm', 'Kirundi': 'rn', 'Romanian': 'ro', 'Russian': 'ru', 'Kinyarwanda': 'rw', 'Sanskrit': 'sa', 'Sorbian': 'sb', 'Sardinian': 'sc', 'Sindhi': 'sd', 'Sami': 'se', 'Sami (Finland)': 'se-fi', 'Sami (Norway)': 'se-no', 'Sami (Sweden)': 'se-se', 'Sangro': 'sg', 'Serbo-Croatian': 'sh', 'Singhalese': 'si', 'Slovak': 'sk', 'Samoan': 'sm', 'Shona': 'sn', 'Somali': 'so', 'Albanian': 'sq', 'Serbian': 'sr', 'Serbian (Bosnia and Herzegovina)': 'sr-ba', 'Serbian (Serbia and Montenegro)': 'sr-sp', 'Siswati': 'ss', 'Sesotho': 'st', 'Sundanese': 'su', 'Swedish': 'sv', 'Swedish (Finland)': 'sv-fi', 'Swedish (Sweden)': 'sv-se', 'Swahili': 'sw', 'Sutu': 'sx', 'Syriac': 'syr', 'Tamil': 'ta', 'Telugu': 'te', 'Tajik': 'tg', 'Thai': 'th', 'Tigrinya': 'ti', 'Turkmen': 'tk', 'Tagalog': 'tl', 'Tswana': 'tn', 'Tonga': 'to', 'Turkish': 'tr', 'Tsonga': 'ts', 'Tatar': 'tt', 'Twi': 'tw', 'Tahitian': 'ty', 'Uighur': 'ug', 'Ukrainian': 'uk', 'Urdu': 'ur', 'Uzbek': 'uz', 'Venda': 've', 'Vietnamese': 'vi', 'Volapuk': 'vo', 'Walloon': 'wa', 'Wolof': 'wo', 'Xhosa': 'xh', 'Yoruba': 'yo', 'Zhuang': 'za', 'Chinese': 'zh', 'Chinese (China)': 'zh-cn', 'Chinese (Hong Kong SAR)': 'zh-hk', 'Chinese (Macau SAR)': 'zh-mo', 'Chinese (Singapore)': 'zh-sg', 'Chinese (Taiwan)': 'zh-tw', 'Zulu': 'zu'};