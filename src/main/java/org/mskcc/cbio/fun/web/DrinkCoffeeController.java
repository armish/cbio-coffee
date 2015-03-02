package org.mskcc.cbio.fun.web;
import org.mskcc.cbio.fun.model.event.DrinkCoffee;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/drinkcoffees")
@Controller
@RooWebScaffold(path = "drinkcoffees", formBackingObject = DrinkCoffee.class)
@RooWebFinder
public class DrinkCoffeeController {
}
