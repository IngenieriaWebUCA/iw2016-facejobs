package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Oferta {

    /**
     */
    private String titulo;

    /**
     */
    private String infoPuesto;

    /**
     */
    private Integer idFormacion;

    /**
     */
    private Integer idSede;

    /**
     */
    private Integer tipoContrato;

    /**
     */
    private Integer salarioBruto;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaInc;

    /**
     */
    private Integer numVac;

    /**
     */
    private String perfilDem;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecIniOferta;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecFinOferta;

    /**
     */
    private Integer estado;

    /**
     */
    @ManyToOne
    private Sede idSedeOferta;

    /**
     */
    @ManyToOne
    private Inscripcion idInscripcionOferta;

    /**
     */
    @ManyToOne
    private Puesto idPuestoOferta;
}
