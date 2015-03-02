package org.mskcc.cbio.fun.web;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/coffeedrinkers")
@Controller
@RooWebScaffold(path = "coffeedrinkers", formBackingObject = CoffeeDrinker.class)
@RooWebFinder
public class CoffeeDrinkerController {
}
