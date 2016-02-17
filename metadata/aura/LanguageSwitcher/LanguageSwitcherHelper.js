({
    //get user local language
    initialize: function(cmp, setlang) {
        var action = cmp.get("c.setLanguage");
        action.setCallback(this, function(res){
            var state = res.getState();
            if (state === "SUCCESS") {
                var ret = res.getReturnValue();
                cmp.set("v.currentLang", ret);
                this._activeDisactiveButton(cmp);
            }
        });
        $A.enqueueAction(action);
    },

    //change user local language to given value
    changeLanguage: function(cmp, setlang) {
        var action = cmp.get("c.setLanguage");
        action.setParams({ 
            ref1 : setlang
        });
        action.setCallback(this, function(res){
            var state = res.getState();
            if (state === "SUCCESS") {
                var ret = res.getReturnValue();
                cmp.set("v.currentLang", ret);
                this._activeDisactiveButton(cmp);
            }
        });
        $A.enqueueAction(action);
    },   
    
    //consider each button state by current user local language
    _activeDisactiveButton: function(cmp){
        var leftString = cmp.get("v.leftLang");
        var rightString = cmp.get("v.rightLang");
        var tmpLang = cmp.get("v.currentLang");
        if (tmpLang == rightString){
            this._setStyle(cmp, false, true);
        } else if (tmpLang == leftString){
            this._setStyle(cmp, true, false);
        }        
    },
    
    //set a button to active or disactive
    _setStyle: function(cmp, leftStyle, rightStyle){
        var leftButton = cmp.find("changeToLeft");
		leftButton.getElement().disabled = leftStyle;        
        var rightButton = cmp.find("changeToRight");
        rightButton.getElement().disabled = rightStyle;
    },
    
})