// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.model.CoffeeDrinkerDataOnDemand;
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.mskcc.cbio.fun.model.event.CleanUpDataOnDemand;
import org.mskcc.cbio.fun.model.event.CleanUpType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect CleanUpDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CleanUpDataOnDemand: @Component;
    
    private Random CleanUpDataOnDemand.rnd = new SecureRandom();
    
    private List<CleanUp> CleanUpDataOnDemand.data;
    
    @Autowired
    CoffeeDrinkerDataOnDemand CleanUpDataOnDemand.coffeeDrinkerDataOnDemand;
    
    public CleanUp CleanUpDataOnDemand.getNewTransientCleanUp(int index) {
        CleanUp obj = new CleanUp();
        setCleanUpType(obj, index);
        setCoffeeDrinker(obj, index);
        setEventDate(obj, index);
        return obj;
    }
    
    public void CleanUpDataOnDemand.setCleanUpType(CleanUp obj, int index) {
        CleanUpType cleanUpType = CleanUpType.class.getEnumConstants()[0];
        obj.setCleanUpType(cleanUpType);
    }
    
    public void CleanUpDataOnDemand.setCoffeeDrinker(CleanUp obj, int index) {
        CoffeeDrinker coffeeDrinker = coffeeDrinkerDataOnDemand.getRandomCoffeeDrinker();
        obj.setCoffeeDrinker(coffeeDrinker);
    }
    
    public void CleanUpDataOnDemand.setEventDate(CleanUp obj, int index) {
        Date eventDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEventDate(eventDate);
    }
    
    public CleanUp CleanUpDataOnDemand.getSpecificCleanUp(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        CleanUp obj = data.get(index);
        Long id = obj.getId();
        return CleanUp.findCleanUp(id);
    }
    
    public CleanUp CleanUpDataOnDemand.getRandomCleanUp() {
        init();
        CleanUp obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return CleanUp.findCleanUp(id);
    }
    
    public boolean CleanUpDataOnDemand.modifyCleanUp(CleanUp obj) {
        return false;
    }
    
    public void CleanUpDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = CleanUp.findCleanUpEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'CleanUp' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<CleanUp>();
        for (int i = 0; i < 10; i++) {
            CleanUp obj = getNewTransientCleanUp(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
