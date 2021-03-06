// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.web;

import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.web.CoffeeDrinkerController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect CoffeeDrinkerController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByEmailEquals", "form" }, method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByEmailEqualsForm(Model uiModel) {
        return "coffeedrinkers/findCoffeeDrinkersByEmailEquals";
    }
    
    @RequestMapping(params = "find=ByEmailEquals", method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByEmailEquals(@RequestParam("email") String email, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByEmailEquals(email, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CoffeeDrinker.countFindCoffeeDrinkersByEmailEquals(email) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByEmailEquals(email, sortFieldName, sortOrder).getResultList());
        }
        return "coffeedrinkers/list";
    }
    
    @RequestMapping(params = { "find=ByEmailLike", "form" }, method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByEmailLikeForm(Model uiModel) {
        return "coffeedrinkers/findCoffeeDrinkersByEmailLike";
    }
    
    @RequestMapping(params = "find=ByEmailLike", method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByEmailLike(@RequestParam("email") String email, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByEmailLike(email, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CoffeeDrinker.countFindCoffeeDrinkersByEmailLike(email) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByEmailLike(email, sortFieldName, sortOrder).getResultList());
        }
        return "coffeedrinkers/list";
    }
    
    @RequestMapping(params = { "find=ByFirstNameLike", "form" }, method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByFirstNameLikeForm(Model uiModel) {
        return "coffeedrinkers/findCoffeeDrinkersByFirstNameLike";
    }
    
    @RequestMapping(params = "find=ByFirstNameLike", method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByFirstNameLike(@RequestParam("firstName") String firstName, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByFirstNameLike(firstName, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CoffeeDrinker.countFindCoffeeDrinkersByFirstNameLike(firstName) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByFirstNameLike(firstName, sortFieldName, sortOrder).getResultList());
        }
        return "coffeedrinkers/list";
    }
    
    @RequestMapping(params = { "find=ByLastNameLike", "form" }, method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByLastNameLikeForm(Model uiModel) {
        return "coffeedrinkers/findCoffeeDrinkersByLastNameLike";
    }
    
    @RequestMapping(params = "find=ByLastNameLike", method = RequestMethod.GET)
    public String CoffeeDrinkerController.findCoffeeDrinkersByLastNameLike(@RequestParam("lastName") String lastName, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByLastNameLike(lastName, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) CoffeeDrinker.countFindCoffeeDrinkersByLastNameLike(lastName) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkersByLastNameLike(lastName, sortFieldName, sortOrder).getResultList());
        }
        return "coffeedrinkers/list";
    }
    
}
