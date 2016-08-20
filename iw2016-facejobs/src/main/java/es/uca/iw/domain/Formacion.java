package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Formacion {

    /**
     */
    @NotNull
    private Integer idTipoFormacion;

    /**
     */
    private Integer titulacion;

    /**
     */
    private String nivel;

    /**
     */
    @ManyToOne
    private Oferta idOfertaFormacion;

    /**
     */
    @ManyToOne
    private Formaciondemandante idFormacionDemandanteFormacion;
}
