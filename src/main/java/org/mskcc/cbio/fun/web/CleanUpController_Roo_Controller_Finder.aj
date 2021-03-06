// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.web;

import java.util.Date;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.mskcc.cbio.fun.model.event.CleanUpType;
import org.mskcc.cbio.fun.web.CleanUpController;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect CleanUpController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByCleanUpType", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByCleanUpTypeForm(Model uiModel) {
        uiModel.addAttribute("cleanuptypes", java.util.Arrays.asList(CleanUpType.class.getEnumConstants()));
        return "cleanups/findCleanUpsByCleanUpType";
    }
    
    @RequestMapping(params = "find=ByCleanUpType", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByCleanUpType(@RequestParam("cleanUpType") CleanUpType cleanUpType, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByCleanUpType(cleanUpType, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByCleanUpType(cleanUpType) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByCleanUpType(cleanUpType, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
    @RequestMapping(params = { "find=ByCoffeeDrinker", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByCoffeeDrinkerForm(Model uiModel) {
        uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findAllCoffeeDrinkers());
        return "cleanups/findCleanUpsByCoffeeDrinker";
    }
    
    @RequestMapping(params = "find=ByCoffeeDrinker", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByCoffeeDrinker(@RequestParam("coffeeDrinker") CoffeeDrinker coffeeDrinker, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByCoffeeDrinker(coffeeDrinker, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByCoffeeDrinker(coffeeDrinker) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByCoffeeDrinker(coffeeDrinker, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateBetween", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateBetweenForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/findCleanUpsByEventDateBetween";
    }
    
    @RequestMapping(params = "find=ByEventDateBetween", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateBetween(@RequestParam("minEventDate") @DateTimeFormat(style = "M-") Date minEventDate, @RequestParam("maxEventDate") @DateTimeFormat(style = "M-") Date maxEventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateBetween(minEventDate, maxEventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByEventDateBetween(minEventDate, maxEventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateBetween(minEventDate, maxEventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateEquals", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/findCleanUpsByEventDateEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateEquals", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByEventDateEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateGreaterThanEquals", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateGreaterThanEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/findCleanUpsByEventDateGreaterThanEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateGreaterThanEquals", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateGreaterThanEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateGreaterThanEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByEventDateGreaterThanEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateGreaterThanEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateLessThanEquals", "form" }, method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateLessThanEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/findCleanUpsByEventDateLessThanEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateLessThanEquals", method = RequestMethod.GET)
    public String CleanUpController.findCleanUpsByEventDateLessThanEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateLessThanEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CleanUp.countFindCleanUpsByEventDateLessThanEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("cleanups", CleanUp.findCleanUpsByEventDateLessThanEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "cleanups/list";
    }
    
}
