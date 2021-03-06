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
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.mskcc.cbio.fun.model.event.CleanUpDataOnDemand;
import org.mskcc.cbio.fun.model.event.CleanUpIntegrationTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CleanUpIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CleanUpIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CleanUpIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CleanUpIntegrationTest: @Transactional;
    
    @Autowired
    CleanUpDataOnDemand CleanUpIntegrationTest.dod;
    
    @Test
    public void CleanUpIntegrationTest.testCountCleanUps() {
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", dod.getRandomCleanUp());
        long count = CleanUp.countCleanUps();
        Assert.assertTrue("Counter for 'CleanUp' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CleanUpIntegrationTest.testFindCleanUp() {
        CleanUp obj = dod.getRandomCleanUp();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to provide an identifier", id);
        obj = CleanUp.findCleanUp(id);
        Assert.assertNotNull("Find method for 'CleanUp' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'CleanUp' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CleanUpIntegrationTest.testFindAllCleanUps() {
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", dod.getRandomCleanUp());
        long count = CleanUp.countCleanUps();
        Assert.assertTrue("Too expensive to perform a find all test for 'CleanUp', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<CleanUp> result = CleanUp.findAllCleanUps();
        Assert.assertNotNull("Find all method for 'CleanUp' illegally returned null", result);
        Assert.assertTrue("Find all method for 'CleanUp' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CleanUpIntegrationTest.testFindCleanUpEntries() {
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", dod.getRandomCleanUp());
        long count = CleanUp.countCleanUps();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<CleanUp> result = CleanUp.findCleanUpEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'CleanUp' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'CleanUp' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CleanUpIntegrationTest.testFlush() {
        CleanUp obj = dod.getRandomCleanUp();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to provide an identifier", id);
        obj = CleanUp.findCleanUp(id);
        Assert.assertNotNull("Find method for 'CleanUp' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCleanUp(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'CleanUp' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CleanUpIntegrationTest.testMergeUpdate() {
        CleanUp obj = dod.getRandomCleanUp();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to provide an identifier", id);
        obj = CleanUp.findCleanUp(id);
        boolean modified =  dod.modifyCleanUp(obj);
        Integer currentVersion = obj.getVersion();
        CleanUp merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'CleanUp' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CleanUpIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", dod.getRandomCleanUp());
        CleanUp obj = dod.getNewTransientCleanUp(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'CleanUp' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'CleanUp' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CleanUpIntegrationTest.testRemove() {
        CleanUp obj = dod.getRandomCleanUp();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CleanUp' failed to provide an identifier", id);
        obj = CleanUp.findCleanUp(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'CleanUp' with identifier '" + id + "'", CleanUp.findCleanUp(id));
    }
    
}
