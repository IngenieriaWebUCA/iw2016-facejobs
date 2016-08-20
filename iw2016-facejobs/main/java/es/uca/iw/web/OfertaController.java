package es.uca.iw.web;
import es.uca.iw.domain.Oferta;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ofertas")
@Controller
@RooWebScaffold(path = "ofertas", formBackingObject = Oferta.class)
public class OfertaController {
}
