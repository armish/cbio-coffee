// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.util.Date;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.mskcc.cbio.fun.model.event.CleanUpType;

privileged aspect CleanUp_Roo_JavaBean {
    
    public Date CleanUp.getEventDate() {
        return this.eventDate;
    }
    
    public void CleanUp.setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }
    
    public CoffeeDrinker CleanUp.getCoffeeDrinker() {
        return this.coffeeDrinker;
    }
    
    public void CleanUp.setCoffeeDrinker(CoffeeDrinker coffeeDrinker) {
        this.coffeeDrinker = coffeeDrinker;
    }
    
    public CleanUpType CleanUp.getCleanUpType() {
        return this.cleanUpType;
    }
    
    public void CleanUp.setCleanUpType(CleanUpType cleanUpType) {
        this.cleanUpType = cleanUpType;
    }
    
}