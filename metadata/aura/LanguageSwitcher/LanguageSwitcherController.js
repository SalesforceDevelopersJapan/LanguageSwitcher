({
    doInit: function(cmp, evt, helper){
        helper.initialize(cmp);
    },

    changeToLeft : function(cmp, evt, helper) {
    	var setlang = cmp.get("v.leftLang");
        helper.changeLanguage(cmp, setlang);
        window.location.reload();
    },
        
    changeToRight : function(cmp, evt, helper) {
    	var setlang = cmp.get("v.rightLang");
        helper.changeLanguage(cmp, setlang);        
        window.location.reload();
    },
})