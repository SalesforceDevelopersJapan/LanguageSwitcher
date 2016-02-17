public with sharing class LanguageSwitcherController {
    
    private static final Map<String,String> lang2key = new Map<String,String>{'English' => 'en_US', 'Japanese' => 'ja', 'Chinese_Simplified' => 'zh_CN','Chinese_Traditional' => 'zh_TW', 'Danish' => 'da', 'Dutch' => 'nl_NL',
        'Finnish' => 'fi', 'French' => 'fr', 'German' => 'de', 'Italian' => 'it', 'Korean' => 'ko', 'Norwegian' => 'no', 'Portuguese_Brazil' => 'pt_BR', 'Russian' => 'ru', 'Spanish' => 'es',
        'Spanish_Mexico' => 'es_MX','Swedish' => 'sv', 'Thai' => 'th'};
        
        private static final Map<String,String> key2lang = new Map<String,String>{'en_US' => 'English', 'ja' => 'Japanese', 'zh_CN' => 'Chinese_Simplified','zh_TW' => 'Chinese_Traditional', 'da' => 'Danish', 'nl_NL' => 'Dutch',
            'fi' => 'Finnish', 'fr' => 'French', 'de' => 'German', 'it' => 'Italian', 'ko' => 'Korean', 'no' => 'Norwegian', 'pt_BR' => 'Portuguese_Brazil', 'ru' => 'Russian', 'es' => 'Spanish',
            'es_MX' => 'Spanish_Mexico','sv' => 'Swedish', 'th' => 'Thai'};
        
        
        //change user local language and return changed local language
        @AuraEnabled
        public static String setLanguage (String ref1){
            String setLang; // language which to change
            String changedLang; //changed language
            String ret1; //return value
            
            if(ref1 != null){
                setLang = lang2key.get(ref1);
            }
            
            User me = [SELECT Id, LanguageLocaleKey FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
            if (setLang != null && me.LanguageLocaleKey != setLang){
                me.LanguageLocaleKey = setLang;
                update me;
                changedLang = setLang;
            } else {
                changedLang = me.LanguageLocaleKey;
            }
            ret1 = key2lang.get(changedLang);
            
            return ret1;
        }
    
}