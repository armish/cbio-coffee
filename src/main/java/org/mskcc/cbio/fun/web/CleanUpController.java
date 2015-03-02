package org.mskcc.cbio.fun.web;
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/cleanups")
@Controller
@RooWebScaffold(path = "cleanups", formBackingObject = CleanUp.class)
@RooWebFinder
public class CleanUpController {
}
