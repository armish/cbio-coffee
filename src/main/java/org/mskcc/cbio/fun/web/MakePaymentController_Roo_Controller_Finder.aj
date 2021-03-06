// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.web;

import java.util.Date;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.model.event.MakePayment;
import org.mskcc.cbio.fun.web.MakePaymentController;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect MakePaymentController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByCoffeeDrinker", "form" }, method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByCoffeeDrinkerForm(Model uiModel) {
        uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findAllCoffeeDrinkers());
        return "makepayments/findMakePaymentsByCoffeeDrinker";
    }
    
    @RequestMapping(params = "find=ByCoffeeDrinker", method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByCoffeeDrinker(@RequestParam("coffeeDrinker") CoffeeDrinker coffeeDrinker, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByCoffeeDrinker(coffeeDrinker, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) MakePayment.countFindMakePaymentsByCoffeeDrinker(coffeeDrinker) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByCoffeeDrinker(coffeeDrinker, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateEquals", "form" }, method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/findMakePaymentsByEventDateEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateEquals", method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) MakePayment.countFindMakePaymentsByEventDateEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateGreaterThanEquals", "form" }, method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateGreaterThanEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/findMakePaymentsByEventDateGreaterThanEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateGreaterThanEquals", method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateGreaterThanEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateGreaterThanEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) MakePayment.countFindMakePaymentsByEventDateGreaterThanEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateGreaterThanEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/list";
    }
    
    @RequestMapping(params = { "find=ByEventDateLessThanEquals", "form" }, method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateLessThanEqualsForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/findMakePaymentsByEventDateLessThanEquals";
    }
    
    @RequestMapping(params = "find=ByEventDateLessThanEquals", method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByEventDateLessThanEquals(@RequestParam("eventDate") @DateTimeFormat(style = "M-") Date eventDate, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateLessThanEquals(eventDate, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) MakePayment.countFindMakePaymentsByEventDateLessThanEquals(eventDate) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByEventDateLessThanEquals(eventDate, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/list";
    }
    
    @RequestMapping(params = { "find=ByPriceBetween", "form" }, method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByPriceBetweenForm(Model uiModel) {
        return "makepayments/findMakePaymentsByPriceBetween";
    }
    
    @RequestMapping(params = "find=ByPriceBetween", method = RequestMethod.GET)
    public String MakePaymentController.findMakePaymentsByPriceBetween(@RequestParam("minPrice") Double minPrice, @RequestParam("maxPrice") Double maxPrice, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByPriceBetween(minPrice, maxPrice, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) MakePayment.countFindMakePaymentsByPriceBetween(minPrice, maxPrice) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("makepayments", MakePayment.findMakePaymentsByPriceBetween(minPrice, maxPrice, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "makepayments/list";
    }
    
}
