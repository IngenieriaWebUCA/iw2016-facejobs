// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.web;

import es.uca.iw.domain.Usuario;
import es.uca.iw.reference.TipoUsu;
import es.uca.iw.web.UsuarioController;
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

privileged aspect UsuarioController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String UsuarioController.create(@Valid Usuario usuario, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, usuario);
            return "usuarios/create";
        }
        uiModel.asMap().clear();
        usuario.persist();
        return "redirect:/usuarios/" + encodeUrlPathSegment(usuario.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String UsuarioController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Usuario());
        return "usuarios/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String UsuarioController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("usuario", Usuario.findUsuario(id));
        uiModel.addAttribute("itemId", id);
        return "usuarios/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String UsuarioController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("usuarios", Usuario.findUsuarioEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Usuario.countUsuarios() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("usuarios", Usuario.findAllUsuarios(sortFieldName, sortOrder));
        }
        return "usuarios/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String UsuarioController.update(@Valid Usuario usuario, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, usuario);
            return "usuarios/update";
        }
        uiModel.asMap().clear();
        usuario.merge();
        return "redirect:/usuarios/" + encodeUrlPathSegment(usuario.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String UsuarioController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Usuario.findUsuario(id));
        return "usuarios/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String UsuarioController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Usuario usuario = Usuario.findUsuario(id);
        usuario.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/usuarios";
    }
    
    void UsuarioController.populateEditForm(Model uiModel, Usuario usuario) {
        uiModel.addAttribute("usuario", usuario);
        uiModel.addAttribute("tipousus", Arrays.asList(TipoUsu.values()));
    }
    
    String UsuarioController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
