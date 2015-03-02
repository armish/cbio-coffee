// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mskcc.cbio.fun.model.event.DrinkCoffee;
import org.mskcc.cbio.fun.model.event.DrinkCoffeeDataOnDemand;
import org.mskcc.cbio.fun.model.event.DrinkCoffeeIntegrationTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DrinkCoffeeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DrinkCoffeeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DrinkCoffeeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DrinkCoffeeIntegrationTest: @Transactional;
    
    @Autowired
    DrinkCoffeeDataOnDemand DrinkCoffeeIntegrationTest.dod;
    
    @Test
    public void DrinkCoffeeIntegrationTest.testCountDrinkCoffees() {
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", dod.getRandomDrinkCoffee());
        long count = DrinkCoffee.countDrinkCoffees();
        Assert.assertTrue("Counter for 'DrinkCoffee' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testFindDrinkCoffee() {
        DrinkCoffee obj = dod.getRandomDrinkCoffee();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to provide an identifier", id);
        obj = DrinkCoffee.findDrinkCoffee(id);
        Assert.assertNotNull("Find method for 'DrinkCoffee' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DrinkCoffee' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testFindAllDrinkCoffees() {
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", dod.getRandomDrinkCoffee());
        long count = DrinkCoffee.countDrinkCoffees();
        Assert.assertTrue("Too expensive to perform a find all test for 'DrinkCoffee', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DrinkCoffee> result = DrinkCoffee.findAllDrinkCoffees();
        Assert.assertNotNull("Find all method for 'DrinkCoffee' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DrinkCoffee' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testFindDrinkCoffeeEntries() {
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", dod.getRandomDrinkCoffee());
        long count = DrinkCoffee.countDrinkCoffees();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DrinkCoffee> result = DrinkCoffee.findDrinkCoffeeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DrinkCoffee' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DrinkCoffee' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testFlush() {
        DrinkCoffee obj = dod.getRandomDrinkCoffee();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to provide an identifier", id);
        obj = DrinkCoffee.findDrinkCoffee(id);
        Assert.assertNotNull("Find method for 'DrinkCoffee' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDrinkCoffee(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'DrinkCoffee' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testMergeUpdate() {
        DrinkCoffee obj = dod.getRandomDrinkCoffee();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to provide an identifier", id);
        obj = DrinkCoffee.findDrinkCoffee(id);
        boolean modified =  dod.modifyDrinkCoffee(obj);
        Integer currentVersion = obj.getVersion();
        DrinkCoffee merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'DrinkCoffee' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", dod.getRandomDrinkCoffee());
        DrinkCoffee obj = dod.getNewTransientDrinkCoffee(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DrinkCoffee' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'DrinkCoffee' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DrinkCoffeeIntegrationTest.testRemove() {
        DrinkCoffee obj = dod.getRandomDrinkCoffee();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DrinkCoffee' failed to provide an identifier", id);
        obj = DrinkCoffee.findDrinkCoffee(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'DrinkCoffee' with identifier '" + id + "'", DrinkCoffee.findDrinkCoffee(id));
    }
    
}
