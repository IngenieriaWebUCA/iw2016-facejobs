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

import es.uca.iw.reference.TipoSexo;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findDemandantesByTrabajosDisp" })
public class Demandante {

    /**
     */
    @NotNull
    private String nombre;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecNac;

    /**
     */
    private String direccion;

    /**
     */
    private String email;

    /**
     */
    private String telefono;

    /**
     */
    private String resumenTray;

    /**
     */
    private String foto;

    /**
     */
    private String trabajosDisp;

    /**
     */
    private String experiencia;

    /**
     */
    @ManyToOne
    private Usuario idusuarioDem;

    /**
     */
    @ManyToOne
    private Inscripcion idInscripcionDemandante;

    /**
     */
    @ManyToOne
    private Demandante idExperienciaDemandante;

    /**
     */
    @ManyToOne
    private Puesto idPuestoDemandante;

    /**
     */
    @ManyToOne
    private Formaciondemandante idFormacionDemandanteDemandante;

    /**
     */
    @NotNull
    @Enumerated
    private TipoSexo tipoSexo;
}
