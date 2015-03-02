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
import org.mskcc.cbio.fun.model.event.DrinkCoffee;
import org.mskcc.cbio.fun.model.event.DrinkCoffeeDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DrinkCoffeeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DrinkCoffeeDataOnDemand: @Component;
    
    private Random DrinkCoffeeDataOnDemand.rnd = new SecureRandom();
    
    private List<DrinkCoffee> DrinkCoffeeDataOnDemand.data;
    
    @Autowired
    CoffeeDrinkerDataOnDemand DrinkCoffeeDataOnDemand.coffeeDrinkerDataOnDemand;
    
    public DrinkCoffee DrinkCoffeeDataOnDemand.getNewTransientDrinkCoffee(int index) {
        DrinkCoffee obj = new DrinkCoffee();
        setCoffeeDrinker(obj, index);
        setEventDate(obj, index);
        setPrice(obj, index);
        return obj;
    }
    
    public void DrinkCoffeeDataOnDemand.setCoffeeDrinker(DrinkCoffee obj, int index) {
        CoffeeDrinker coffeeDrinker = coffeeDrinkerDataOnDemand.getRandomCoffeeDrinker();
        obj.setCoffeeDrinker(coffeeDrinker);
    }
    
    public void DrinkCoffeeDataOnDemand.setEventDate(DrinkCoffee obj, int index) {
        Date eventDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEventDate(eventDate);
    }
    
    public void DrinkCoffeeDataOnDemand.setPrice(DrinkCoffee obj, int index) {
        Double price = new Integer(index).doubleValue();
        if (price < 0.0D) {
            price = 0.0D;
        }
        obj.setPrice(price);
    }
    
    public DrinkCoffee DrinkCoffeeDataOnDemand.getSpecificDrinkCoffee(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        DrinkCoffee obj = data.get(index);
        Long id = obj.getId();
        return DrinkCoffee.findDrinkCoffee(id);
    }
    
    public DrinkCoffee DrinkCoffeeDataOnDemand.getRandomDrinkCoffee() {
        init();
        DrinkCoffee obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return DrinkCoffee.findDrinkCoffee(id);
    }
    
    public boolean DrinkCoffeeDataOnDemand.modifyDrinkCoffee(DrinkCoffee obj) {
        return false;
    }
    
    public void DrinkCoffeeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = DrinkCoffee.findDrinkCoffeeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'DrinkCoffee' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<DrinkCoffee>();
        for (int i = 0; i < 10; i++) {
            DrinkCoffee obj = getNewTransientDrinkCoffee(i);
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
