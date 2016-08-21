package es.uca.iw.web;
import es.uca.iw.domain.Tipoformacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tipoformacions")
@Controller
@RooWebScaffold(path = "tipoformacions", formBackingObject = Tipoformacion.class)
public class TipoformacionController {
}
