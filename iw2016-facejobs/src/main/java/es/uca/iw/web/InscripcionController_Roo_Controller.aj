// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.web;

import es.uca.iw.domain.Demandante;
import es.uca.iw.domain.Inscripcion;
import es.uca.iw.domain.Oferta;
import es.uca.iw.reference.EstadoIns;
import es.uca.iw.web.InscripcionController;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect InscripcionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String InscripcionController.create(@Valid Inscripcion inscripcion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, inscripcion);
            return "inscripcions/create";
        }
        uiModel.asMap().clear();
        inscripcion.persist();
        return "redirect:/inscripcions/" + encodeUrlPathSegment(inscripcion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String InscripcionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Inscripcion());
        return "inscripcions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String InscripcionController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("inscripcion", Inscripcion.findInscripcion(id));
        uiModel.addAttribute("itemId", id);
        return "inscripcions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String InscripcionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("inscripcions", Inscripcion.findInscripcionEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Inscripcion.countInscripcions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("inscripcions", Inscripcion.findAllInscripcions(sortFieldName, sortOrder));
        }
        return "inscripcions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String InscripcionController.update(@Valid Inscripcion inscripcion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, inscripcion);
            return "inscripcions/update";
        }
        uiModel.asMap().clear();
        inscripcion.merge();
        return "redirect:/inscripcions/" + encodeUrlPathSegment(inscripcion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String InscripcionController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Inscripcion.findInscripcion(id));
        return "inscripcions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String InscripcionController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Inscripcion inscripcion = Inscripcion.findInscripcion(id);
        inscripcion.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/inscripcions";
    }
    
    void InscripcionController.populateEditForm(Model uiModel, Inscripcion inscripcion) {
        uiModel.addAttribute("inscripcion", inscripcion);
        uiModel.addAttribute("demandantes", Demandante.findAllDemandantes());
        uiModel.addAttribute("ofertas", Oferta.findAllOfertas());
        uiModel.addAttribute("estadoinses", Arrays.asList(EstadoIns.values()));
    }
    
    String InscripcionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
