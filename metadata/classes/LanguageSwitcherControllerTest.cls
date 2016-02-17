@isTest
public class LanguageSwitcherControllerTest {
    
    private static testMethod void myTest() {        
		String loc1 = 'en_US';
        String lang1 = 'English';
        String lang2 = 'Japanese';        
        User u = new User();
        u.Username = 'testd@ms7@ls_lc@example.com';
		u.Alias = 'tmle';
        u.CommunityNickname = 'test';
        u.Email = 'test@example.com';
        u.LastName = 'LastName';
        u.profileid = UserInfo.getProfileId();
        u.emailencodingkey='ISO-8859-1';
        u.languagelocalekey = loc1;
        u.localesidkey='en_GB';
        u.timezonesidkey='Europe/London';        
        String result;
        String nval;
		
        //get language 'English'
        System.runAs(u){
            result = LanguageSwitcherController.setLanguage(nval);
        }
        System.assertEquals(lang1, result);
        
        //set language 'English' to 'Japanese' and get language 'Japanese'
        System.runAs(u){
            result = LanguageSwitcherController.setLanguage(lang2);
        }
        System.assertEquals(lang2, result);

        //get language 'Japanese'
        System.runAs(u){
            result = LanguageSwitcherController.setLanguage(nval);
        }
        System.assertEquals(lang2, result);
        
    }
}