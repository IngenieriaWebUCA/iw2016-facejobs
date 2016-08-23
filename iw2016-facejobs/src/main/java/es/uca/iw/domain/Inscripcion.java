package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import es.uca.iw.reference.EstadoIns;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Inscripcion {

    /**
     */
    @NotNull
    private Integer idExperiencia;

    /**
     */
    @ManyToOne
    private Demandante idDemandante;

    /**
     */
    @ManyToOne
    private Oferta idOferta;

    /**
     */
    @NotNull
    @Enumerated
    private EstadoIns estado;
}
