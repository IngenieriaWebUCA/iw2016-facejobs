package es.uca.iw.web;
import es.uca.iw.domain.Sede;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sedes")
@Controller
@RooWebScaffold(path = "sedes", formBackingObject = Sede.class)
public class SedeController {
}
