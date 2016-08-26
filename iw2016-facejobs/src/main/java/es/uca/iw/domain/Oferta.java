package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import es.uca.iw.reference.EstadoOfer;

import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findOfertasByEstado", "findOfertasByIdSede", "findOfertasByTipoContrato", "findOfertasByTitulo", "findOfertasByTituloLike" })
public class Oferta {

    /**
     */
	@NotNull
    private String titulo;

    /**
     */
	@NotNull
    private String infoPuesto;

    /**
     */
    @ManyToOne
    private Formacion idFormacion;

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
    @Enumerated
    private EstadoOfer estado;

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
