package org.mskcc.cbio.fun.web;
import org.mskcc.cbio.fun.model.event.MakePayment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/makepayments")
@Controller
@RooWebScaffold(path = "makepayments", formBackingObject = MakePayment.class)
@RooWebFinder
public class MakePaymentController {
}
