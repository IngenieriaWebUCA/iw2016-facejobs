package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import es.uca.iw.reference.TipoUsu;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Usuario {

    /**
     */
    @NotNull
    private String login;

    /**
     */
    @NotNull
    private String password;

    /**
     */
    @NotNull
    @Enumerated
    private TipoUsu idTipoUsu;
}
