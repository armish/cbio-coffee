// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.mskcc.cbio.fun.web.CoffeeDrinkerController;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CoffeeDrinkerController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CoffeeDrinkerController.create(@Valid CoffeeDrinker coffeeDrinker, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, coffeeDrinker);
            return "coffeedrinkers/create";
        }
        uiModel.asMap().clear();
        coffeeDrinker.persist();
        return "redirect:/coffeedrinkers/" + encodeUrlPathSegment(coffeeDrinker.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CoffeeDrinkerController.createForm(Model uiModel) {
        populateEditForm(uiModel, new CoffeeDrinker());
        return "coffeedrinkers/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String CoffeeDrinkerController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("coffeedrinker", CoffeeDrinker.findCoffeeDrinker(id));
        uiModel.addAttribute("itemId", id);
        return "coffeedrinkers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CoffeeDrinkerController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findCoffeeDrinkerEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) CoffeeDrinker.countCoffeeDrinkers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("coffeedrinkers", CoffeeDrinker.findAllCoffeeDrinkers(sortFieldName, sortOrder));
        }
        return "coffeedrinkers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CoffeeDrinkerController.update(@Valid CoffeeDrinker coffeeDrinker, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, coffeeDrinker);
            return "coffeedrinkers/update";
        }
        uiModel.asMap().clear();
        coffeeDrinker.merge();
        return "redirect:/coffeedrinkers/" + encodeUrlPathSegment(coffeeDrinker.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String CoffeeDrinkerController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, CoffeeDrinker.findCoffeeDrinker(id));
        return "coffeedrinkers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String CoffeeDrinkerController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        CoffeeDrinker coffeeDrinker = CoffeeDrinker.findCoffeeDrinker(id);
        coffeeDrinker.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/coffeedrinkers";
    }
    
    void CoffeeDrinkerController.populateEditForm(Model uiModel, CoffeeDrinker coffeeDrinker) {
        uiModel.addAttribute("coffeeDrinker", coffeeDrinker);
    }
    
    String CoffeeDrinkerController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
