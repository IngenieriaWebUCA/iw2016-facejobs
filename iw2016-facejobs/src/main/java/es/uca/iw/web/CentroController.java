package es.uca.iw.web;
import es.uca.iw.domain.Centro;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/centroes")
@Controller
@RooWebScaffold(path = "centroes", formBackingObject = Centro.class)
public class CentroController {
}
